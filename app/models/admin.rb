class Admin < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string }
  has_many :schools

  devise :database_authenticatable, :registerable, :rememberable, :validatable
  before_action :authenticate_admin!
  # Helpers: admin_signed_in?, current_admin, admin_session
  
  # Class Methods: full_name

end
