class Student < ApplicationRecord
  # Include default devise modules. Others available are: :confirmable, :lockable, :timeoutable, and :trackable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
  
  belongs_to :school
  has_many :borrows
  has_many :books, through: :borrows
  has_many :holds
  has_many :books, through: :holds
end
