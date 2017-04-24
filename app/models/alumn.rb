class Alumn < User
  belongs_to :classroom
  belongs_to :parent
  has_many :grades
  has_many :subjects, through: :grades
end
