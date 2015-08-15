require 'rails_helper'

describe Family do
  let(:family) { Family.create(surname: "Vezzani") }
  let(:member1) { FactoryGirl.create(:member, lastname: "Vezzani") }
  let(:member2) { FactoryGirl.create(:member, lastname: "Vezzani") }
  let(:companionship) { Companionship.create }
  let(:ht1) { HomeTeacher.create(firstname: "Chris",
                                 lastname: "Klomp",
                                 email: "ck@net.net") }
  let(:ht2) { HomeTeacher.create(firstname: "John",
                                 lastname: "Tanner",
                                 email: "jt@net.net") }

  it "has many members" do
    family.members << [member1, member2]
    expect(family.members.count).to eq 2
  end

  it "belongs to a companionship" do
    companionship.home_teachers << [ht1, ht2]
    companionship.families << family
    
    expect(family.home_teachers.length).to eq 2
  end
end
