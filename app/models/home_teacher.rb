class HomeTeacher < Member
  has_one :companionship
  has_one :companion, through: :companionships

  def full_name
    "#{firstname} #{lastname}"
  end
end
