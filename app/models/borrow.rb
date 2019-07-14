class Borrow < ApplicationRecord
  # attributes: { created_at:datetime, due_date:datetime, renewed:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book

  # Custom Reader/Writer Methods
  def due_date=(due_date)
    Date.current + 2592000
  end

  def renewed=(renewed)
    due_date + 2 weeks
  end

end
