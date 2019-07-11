class School < ApplicationRecord
  has_many :students
  has_many :libraries
  has_many :books, through: :libraries
end
