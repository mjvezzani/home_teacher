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

Member.find(4).update(type: "HomeTeacher")
Member.find(7).update(type: "HomeTeacher")
Member.find(12).update(type: "HomeTeacher")
Member.find(16).update(type: "HomeTeacher")

HomeTeacher.first.update(companion_id: HomeTeacher.second.id)
HomeTeacher.second.update(companion_id: HomeTeacher.first.id)
HomeTeacher.third.update(companion_id: HomeTeacher.fourth.id)
HomeTeacher.fourth.update(companion_id: HomeTeacher.third.id)
