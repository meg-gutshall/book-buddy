class Borrow < ApplicationRecord
  # attributes: { created_at:datetime, due_date:date, renewed:boolean, student_id:integer, book_id:integer }
  
  belongs_to :student
  belongs_to :book
end
