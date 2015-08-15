require 'rails_helper'

describe Member do
  let(:member) { Member.create(firstname: "Mike",
                               lastname: "Vezzani",
                               email: "m@v.com") }
  context "Attributes Validations" do
    it "is valid with a firstname, lastname, and email" do
      expect(member).to be_valid
    end

    it "is invalid without a firstname" do
      member.firstname = ""
      expect(member).to be_invalid
    end

    it "is invalid without a lastname" do
      member.lastname = ""
      expect(member).to be_invalid
    end

    it "is invalid without an email" do
      member.email = ""
      expect(member).to be_invalid
    end
  end

  context "Associations" do
    context "Family association" do
      let (:family) { Family.create(surname: "Vezzani") }

      it "belongs to a family" do
        family.members << member

        expect(member.family.members.count).to eq 1
      end
    end

    context "Home teacher association" do
      it "has home teachers" do
        family = Family.create(surname: "Vezzani")
        family.members << member

        ht1 = HomeTeacher.create(firstname: "John",
                                 lastname: "Tanner",
                                 email: "jt@net.net")
        ht2 = HomeTeacher.create(firstname: "Chris",
                                 lastname: "Klomp",
                                 email: "ck@net.net")

        companionship = Companionship.create()
        companionship.home_teachers << [ht1, ht2]
        companionship.families << family

        expect(member.home_teachers).to eq [ht1, ht2]
      end
    end
  end
end
