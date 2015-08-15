class Companionship < ActiveRecord::Base
  has_many :families
  has_many :home_teachers

  def companions
    home_teachers
  end
end
