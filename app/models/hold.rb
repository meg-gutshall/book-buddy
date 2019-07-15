class Hold < ApplicationRecord
  # attributes: { created_at:datetime, borrowed:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book

  # Custom Reader/Writer Methods
  def borrowed=(borrowed)
    # create a borrow
    if @borrowed == true
      Borrow.new(
        due_date: (Time.current + 2628000).strftime("%A, %B %e, %Y"),
        renewed: false,
        student_id: self.student_id,
        book_id: self.book_id
      )
    end
  end

  def borrowed
    @borrowed
  end

end
