class Book < ApplicationRecord
  belongs_to :library
  has_many :borrows
  has_many :students, through: :borrows
  has_many :holds
  has_many :students, through: :holds
end
