class Admin < ApplicationRecord
  has_and_belongs_to_many :schools, join_table: "districts"

  devise :database_authenticatable, :registerable, :validatable
  
  # Class Methods: full_name
  # Methods
  def full_name
    "#{first_name} #{last_name}"
  end

end
