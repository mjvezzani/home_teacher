require 'rails_helper'

describe Companionship do
  it 'has a family' do
    family = Family.create(surname: "Vezzani")
    companionship = Companionship.create
    companionship.families << family

    expect(companionship.families.first.surname).to eq "Vezzani"
  end

  it 'has home teachers' do
    ht1 = HomeTeacher.create(firstname: "John",
                             lastname: "Tanner",
                             email: "jt@net.net")
    ht2 = HomeTeacher.create(firstname: "Chris",
                             lastname: "Klomp",
                             email: "ck@net.net")
    companionship = Companionship.create
    companionship.home_teachers << [ht1, ht2]

    expect(companionship.home_teachers.length).to eq 2
  end
end
