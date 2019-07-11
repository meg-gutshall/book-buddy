class Library < ApplicationRecord
  has_many :books
  belongs_to :school
end
