class Alumn < User
  belongs_to :classroom, optional: true
  belongs_to :parent
  has_many :grades
  has_many :subjects, through: :grades
end
