require 'rails_helper'

describe HomeTeacher do
  let(:companionship) { Companionship.create }
  let(:ht) { HomeTeacher.create(firstname: "Chris", lastname: "Klomp", email: "ck@net.net") }
  let(:ht2) { HomeTeacher.create(firstname: "Jeremy", lastname: "Koontz", email: "ck@net.net") } 
  let(:ht3) { HomeTeacher.create(firstname: "John", lastname: "Tanner", email: "jt@net.net") } 

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
      companionship.home_teachers << [ht, ht2]

      expect(ht.companions.second.full_name).to eq "#{ ht2.full_name }"
      expect(ht2.companions.first.full_name).to eq "#{ ht.full_name }"
    end
  end
end
