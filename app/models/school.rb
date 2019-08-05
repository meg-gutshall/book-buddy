class School < ApplicationRecord
  has_many :admin_schools
  has_many :admins, through: :admin_schools
  has_many :students
  has_many :borrows, through: :students
  has_many :libraries
  has_many :books, through: :libraries
  has_many :holds, through: :books

  validates :name, presence: true
  validates_associated :admins

  def admin_ids=(ids)
    ids.each do |id|
      admin = Admin.find_by(id: id)
      self.admins << admin
    end
  end

  def admin_ids
    @admin_ids
  end

  # Scope Methods
  def self.student_specific(student)
    includes(:students).where(students: student)
  end

  def self.admin_specific(admin)
    # includes(:admins).where(admins: admin)
  end

end
