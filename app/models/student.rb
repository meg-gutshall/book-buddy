class Student < ApplicationRecord
  # attributes: { first_name:string, last_name:string, email:string, password:string, school_id:integer }
  
  # Include default devise modules. Others available are: :confirmable, :lockable, :timeoutable, and :trackable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
  
  belongs_to :school
  has_many :borrows
  has_many :books, through: :borrows
  has_many :holds
  has_many :books, through: :holds

  # Class Methods
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
