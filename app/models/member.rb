class Member < ActiveRecord::Base
  belongs_to :family
  belongs_to :companionship

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true

  delegate :home_teachers, to: :family

  def full_name
    "#{firstname} #{lastname}"
  end
end
