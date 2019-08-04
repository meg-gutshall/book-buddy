class Student < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string, school_id:integer }
  belongs_to :school
  has_many :borrows
  has_many :books, through: :borrows
  has_many :holds, through: :books

  devise :database_authenticatable, :omniauthable, :registerable, :validatable

  # Scope Methods
  def self.student_specific(student)
    where(school_id: student.school_id)
  end

  # Methods
  def full_name
    "#{first_name} #{last_name}"
  end

end
