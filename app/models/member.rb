class Member < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true

  def full_name
    "#{firstname} #{lastname}"
  end
end
