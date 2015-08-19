# home_teacher.companions => array of companions assigned to home_teacher
# home_teacher.families => array of families assigned to home_teacher
HomeTeacher has_many :camilies
HomeTeacher is_a :member    ### <== This isn't right



# companionship.families => array of families assigned to companionship
# companionship.companions => array of companions assigned to companionship
Companionship has_many :families
Companionship has_many :companions




# family.home_teachers => array of home_teachers assigned to family
# family.companionship => companionship object assigned to family
Family has_many :home_teachers
Family has_one :companionship
Family has_many :members



# member.family => family object that member belongs to
# member.home_teachers => array of home_teachers assigned to member
Member belongs_to :family
Member has_many :home_teachers

