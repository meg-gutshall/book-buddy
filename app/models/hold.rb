class Hold < ApplicationRecord
  # attributes: { available:boolean, borrowed:boolean, cancelled:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book

  # Set default: available, borrowed, and cancelled as false
  attribute :available, :boolean, default: false
  attribute :borrowed, :boolean, default: false
  attribute :cancelled, :boolean, default: false

  before_validation :borrow_book

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
