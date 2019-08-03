class Library < ApplicationRecord
  # attributes: { room_number:integer, school_id:integer }
  belongs_to :school
  has_many :books
  has_many :borrows, through: :books
  has_many :holds, through: :books
  
  # Scope Methods
  def self.student_specific(student)
    includes(school: :students).where(school_id: student.school_id)
  end

  scope :alphabetize_by_school, -> { joins(:school).order(:name) }

end
