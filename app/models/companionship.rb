class Companionship < ActiveRecord::Base
  has_many :home_teachers
  has_many :home_teaching_assignments
  has_many :families, through: :home_teaching_assignments
end
