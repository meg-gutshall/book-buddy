class Library < ApplicationRecord
  has_many :students_libraries
  has_many :students, through: :students_libraries
  has_many :books
end
