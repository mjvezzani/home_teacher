class Family < ActiveRecord::Base
  has_many :members
  has_one :home_teaching_assignment
  has_one :companionship, through: :home_teaching_assignment
end
