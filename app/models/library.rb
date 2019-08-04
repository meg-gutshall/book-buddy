class Library < ApplicationRecord
  belongs_to :school
  has_many :books
  has_many :borrows, through: :books
  has_many :holds, through: :books

  validates :room, presence: true
  validates :room, uniqueness: { scope: :school, message: "You have already created a library in this room." }
  validates_associated :school
  
  # Scope Methods
  def self.student_specific(student)
    includes(school: :students).where(school_id: student.school_id)
  end

  scope :alphabetize_by_school, -> { joins(:school).order(:name) }

end
