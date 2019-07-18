class Admin < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string }
  
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :schools
  
  # Class Methods: full_name

end
