class Library < ApplicationRecord
  # attributes: { room_number:integer, school_id:integer }
  belongs_to :school
  has_many :books
  has_many :borrows, through: :books
  has_many :holds, through: :books
  
  # Scope methods
  scope :alphabetize_by_school, -> { joins(:school).order(:name) }

end
