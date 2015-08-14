class HomeTeacher < Member
  has_one :companion, class_name: "Member", foreign_key: "companion_id"
  belongs_to :companion, class_name: "Member", foreign_key: "companion_id"
  belongs_to :companionship

  def full_name
    "#{firstname} #{lastname}"
  end
end
