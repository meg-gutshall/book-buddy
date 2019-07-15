class Library < ApplicationRecord
  # attributes: { room_number:integer, school_id:integer }
  has_many :books
  belongs_to :school

  # Scope methods
  scope :alphabetize_by_school, -> { joins(:school).order(:name) }

end
