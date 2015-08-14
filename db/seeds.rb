# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  FactoryGirl.create(:member, lastname: "Jones")
end

4.times do
  FactoryGirl.create(:member, lastname: "Smith")
end

5.times do
  FactoryGirl.create(:member, lastname: "Perkins")
end

3.times do
  FactoryGirl.create(:member, lastname: "Rowan")
end
