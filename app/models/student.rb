class Student < ApplicationRecord
  # Include default devise modules. Others available are: :confirmable, :lockable, :timeoutable, and :trackable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
  
  has_many :students_libraries
  has_many :libraries, through: :students_libraries
  has_many :borrows
  has_many :books, through: :borrows
end
