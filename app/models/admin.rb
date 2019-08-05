class Admin < ApplicationRecord
  has_many :admin_schools
  has_many :schools, through: :admin_schools

  devise :database_authenticatable, :registerable, :validatable

  validates :first_name, :last_name, presence: true

  def school_ids=(ids)
    ids.each do |id|
      school = School.find_by(id: id)
      self.schools << school
    end
  end
  
  # Methods
  def full_name
    "#{first_name} #{last_name}"
  end

end
