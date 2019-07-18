class Student < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string, school_id:integer }
  belongs_to :school
  has_many :borrows
  has_many :books, through: :borrows
  has_many :holds, through: :books

  devise :database_authenticatable, :omniauthable, :registerable, :rememberable, :validatable
  before_action :authenticate_student!
  # Helpers: student_signed_in?, current_student, student_session

  # Class Methods: full_name

end
