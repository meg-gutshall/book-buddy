class Hold < ApplicationRecord
  # attributes: { borrowed:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book

  # Set default: borrowed as false
  attribute :borrowed, :boolean, default: false

  before_validation :borrow_book

        due_date: (Time.current + 2628000).strftime("%A, %B %e, %Y"),

  private

    # Creates a borrow if the hold is picked up
    def borrow_book
      if borrowed
        Borrow.create(
          student_id: self.student_id,
          book_id: self.book_id
        )
      end
    end

end
