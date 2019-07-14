class Borrow < ApplicationRecord
  # attributes: { created_at:datetime, due_date:date, renewed:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book

  # Scope methods
  # def due_date
  #   created_at + 2 weeks
  # end

  # def renewed
  #   due_date + 2 weeks
  # end

end
