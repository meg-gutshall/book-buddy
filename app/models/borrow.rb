class Borrow < ApplicationRecord
  # attributes: { due_date:string, renewed:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book
  
  # Set default due date dependent on creation date
  attribute :due_date, :string, default: (Time.current + 2628000).strftime("%A, %B %e, %Y")

  before_validation :renew_book

  private

    # Adds two extra weeks to the due date
    def renew_book
      if renewed
        self.due_date = (self.created_at + 3838000).strftime("%A, %B %e, %Y")
      end
    end

end
