class HomeTeacher < Member
  belongs_to :companionship

  delegate :companions, to: :companionship

  def full_name
    "#{firstname} #{lastname}"
  end
end
