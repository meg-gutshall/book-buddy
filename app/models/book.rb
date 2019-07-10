class Book < ApplicationRecord
  belongs_to :library
  has_many :borrows
  has_many :students, through: :borrows
end
