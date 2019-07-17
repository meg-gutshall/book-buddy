class School < ApplicationRecord
  # attributes: { name:string }
  belongs_to :admin
  has_many :students
  has_many :borrows, through: :students
  has_many :libraries
  has_many :books, through: :libraries
  has_many :holds, through: :books
end
