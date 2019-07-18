class Student < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string, school_id:integer }
  
  devise :database_authenticatable, :omniauthable, :registerable, :rememberable, :validatable
  
  belongs_to :school
  has_many :borrows
  has_many :books, through: :borrows
  has_many :holds, through: :books
  # has_many :books, through: :holds

  # Class Methods: full_name

end
