class Admin < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string }
  has_many :schools

  devise :database_authenticatable, :registerable, :validatable
  
  # Class Methods: full_name
  # Methods
  def full_name
    "#{first_name} #{last_name}"
  end

end
