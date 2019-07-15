class Borrow < ApplicationRecord
  # attributes: { created_at:datetime, due_date:string, renewed:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book

  # Custom Reader/Writer Methods  
  def due_date
    @due_date
  end

  def due_date=(due_date)
    @due_date = (Time.current + 2628000).strftime("%A, %B %e, %Y")
  end

  def renewed
    @renewed
  end

  def renewed=(renewed)
    if @renewed == true
      self.update(due_date: nil)
    end
  end

end
