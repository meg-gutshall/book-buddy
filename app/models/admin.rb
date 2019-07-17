class Admin < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string }
  
  # Include default devise modules. Others available are: :confirmable, :lockable, :omniauthable, :timeoutable, and :trackable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :schools
  
  # Class Methods: full_name

end
