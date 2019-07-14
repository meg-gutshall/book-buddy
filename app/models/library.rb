class Library < ApplicationRecord
  # attributes: { location:string, school_id:integer }
  has_many :books
  belongs_to :school

  # Scope methods
  scope :alphabetize_by_school, -> { joins(:school).order(:name) }
  scope :group_by_room, -> { select(:location).group(:location) }

end
