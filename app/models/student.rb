class Student < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string, school_id:integer }
  belongs_to :school
  has_many :borrows
  has_many :books, through: :borrows
  has_many :holds, through: :books

  devise :database_authenticatable, :omniauthable, :registerable, :recoverable, :rememberable, :validatable

  # Class Methods: full_name

end
