class Hold < ApplicationRecord
  # attributes: { created_at:datetime, borrowed:boolean, student_id:integer, book_id:integer }
  
  belongs_to :student
  belongs_to :book
end
