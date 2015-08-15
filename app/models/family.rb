class Family < ActiveRecord::Base
  belongs_to :companionship
  has_many :members

  delegate :home_teachers, to: :companionship
end
