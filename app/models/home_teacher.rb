class HomeTeacher < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true

  has_one :companion, class_name: "HomeTeacher", foreign_key: "companion_id"
  belongs_to :companion, class_name: "HomeTeacher"

  def full_name
    "#{firstname} #{lastname}"
  end
end
