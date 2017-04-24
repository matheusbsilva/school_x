class Grade < ApplicationRecord
  belongs_to :alumn
  belongs_to :subject
end
