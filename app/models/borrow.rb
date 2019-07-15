class Borrow < ApplicationRecord
  # attributes: { due_date:string, renewed:boolean, returned:boolean, overdue:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book
  
  # Set defaults: due date dependent on creation date, renewed, returned, and overdue as false
  attribute :due_date, :string, default: (Time.current + 2628000).strftime("%A, %B %e, %Y")
  attribute :renewed, :boolean, default: false
  attribute :returned, :boolean, default: false
  attribute :overdue, :boolean, default: false

  before_validation :renew_book

  # Add attribute methods
  attribute_method_prefix 'date_'
  define_attribute_methods 'returned'

  # Class Methods
  # If there is a hold on the book, students cannot renew it --> use book_id

  private

    # Adds two extra weeks to the due date
    def renew_book
      if renewed
        self.due_date = (self.created_at + 3838000).strftime("%A, %B %e, %Y")
      end
    end

    # Records the date the book was returned
    def date_attribute(attribute)
      # send(attribute)
    end

end
