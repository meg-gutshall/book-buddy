class Admin < ApplicationRecord
  has_many :admin_schools
  has_many :schools, through: :admin_schools

  devise :database_authenticatable, :registerable, :validatable

  validates :first_name, :last_name, presence: true
  validates_associated :schools
  
  # Methods
  def full_name
    "#{first_name} #{last_name}"
  end

end
