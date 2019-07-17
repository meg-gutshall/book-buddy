class Borrow < ApplicationRecord
  # attributes: { due_date:string, renewed:boolean, returned:boolean, overdue:boolean, student_id:integer, book_id:integer }
  belongs_to :student
  belongs_to :book
  
  before_validation :renew_book

  # Add attribute methods
  attribute :due_date, :string, default: (Time.current + 2628000).strftime("%A, %B %e, %Y")
  attribute :renewed, :boolean, default: false
  attribute :returned, :boolean, default: false  # Method for prefix is defined here
  attribute :overdue, :boolean, default: false
  # attribute_method_prefix 'date_'

  # Scope Methods
  scope :current_borrows, -> { where(returned: false) }

  # Class Methods
  # TODO: If there is a hold on the book, students cannot renew it --> use book_id

  private

    # Add two extra weeks to the due date
    def renew_book
      if renewed
        self.due_date = (self.created_at + 3838000).strftime("%A, %B %e, %Y")
      end
    end

    # Define the returned attribute
    # def attribute(attribute)
    #   send(attribute)
    # end

    # TODO: Record the date the book was returned
    # def date_attribute(attribute)
    #   send(attribute)
    # end

end
