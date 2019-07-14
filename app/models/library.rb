class Library < ApplicationRecord
  # attributes: { location:string, school_id:integer }
  
  has_many :books
  belongs_to :school
end
