require 'rails_helper'

describe HomeTeacher do
  let(:ht) { FactoryGirl.create(:member, lastname: "Smith", type: "HomeTeacher" }
  let(:ht2) { FactoryGirl.create(:member, lastname: "Tanner", type: "HomeTeacher" }
  let(:ht3) { FactoryGirl.create(:member, lastname: "Klomp", type: "HomeTeacher" }

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
    it "has a companion" do
      ht.companion = ht2
      ht2.companion = ht

      expect(ht.companion.full_name).to eq "#{ ht2.full_name }"
      expect(ht2.companion.full_name).to eq "#{ ht.full_name }"
    end

    it "only has one companion"
      # Need to create a method that ensures that companions
      # belong to each other, and when reassignment occurs
      # the previous companionship association is broken
      # and companion_ids get set correctly.

    it "belongs to one companion"
      
  end
end
