class Student < ApplicationRecord
  belongs_to :school
  has_many :borrows
  has_many :books, through: :borrows
  has_many :holds, through: :books

  devise :database_authenticatable, :omniauthable, :registerable, :validatable

  validates :first_name, :last_name, presence: true
  validates_associated :school

  # Scope Methods
  def self.student_specific(student)
    where(school_id: student.school_id)
  end

  def self.admin_specific(admin)
    # where(school: admin.schools)
  end

  # Methods
  def full_name
    "#{first_name} #{last_name}"
  end

end
