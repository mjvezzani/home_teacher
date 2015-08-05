require 'rails_helper'

describe HomeTeacher do
  let(:ht) { HomeTeacher.create(firstname: "Mike", lastname: "Vezzani") }
  let(:ht2) { HomeTeacher.create(firstname: "John", lastname: "Tanner") }
  let(:ht3) { HomeTeacher.create(firstname: "Chris", lastname: "Klomp") }
  context "validations" do
    it "is valid with a firstname and lastname" do
      expect(ht).to be_valid
    end

    it "is invalid without a firstname" do
      ht.firstname = nil
      expect(ht).to be_invalid
    end

    it "is invalid without a lastname" do
      ht.lastname = nil
      expect(ht).to be_invalid
    end
  end

  context "associations" do
    it "has a compaion" do
      ht.companion = ht2
      ht2.companion = ht

      expect(ht.companion.full_name).to eq "John Tanner"
    end

    it "only has one companion" do
      ht.companion = ht2
      expect(ht.companion.full_name).to eq "John Tanner"

      ht.companion = ht3
      expect(ht.companion.full_name).to eq "Chris Klomp"
      expect(ht.companion.full_name).not_to eq "John Tanner"
    end

    it "updates both home teachers when a companion id is changed" do
      ht.companion = ht2
      ht2.companion = ht
      expect(ht.companion.full_name).to eq "John Tanner"
      expect(ht2.companion.full_name).to eq "Mike Vezzani"

      ht.companion = ht3
      expect(ht.companion.full_name).to eq "Chris Klomp"
      expect(ht3.companion.full_name).to eq "Mike Vezzani"
      expect(ht2.companion).to be nil
    end
  end
end
