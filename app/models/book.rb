class Book < ApplicationRecord
  # attributes: { title:string, author:string, genre:string, on_shelf:boolean, library_id:integer }

  belongs_to :library
  has_many :borrows
  has_many :students, through: :borrows
  has_many :holds
  has_many :students, through: :holds
end
