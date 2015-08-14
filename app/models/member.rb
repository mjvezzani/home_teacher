class Member < ActiveRecord::Base
  belongs_to :family

  validates :firstname, presence: true
  validates :lastname, presence: true

  def full_name
    "#{firstname} #{lastname}"
  end
end
