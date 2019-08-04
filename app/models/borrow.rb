class Borrow < ApplicationRecord
  belongs_to :student
  belongs_to :book
  
  before_validation :renew_book
  before_validation :no_weekends

  # Add attribute methods
  attribute :due_date, :string, default: (Time.current + 2628000).strftime("%A, %B %d, %Y")
  attribute :renewed, :boolean, default: false
  attribute :returned, :boolean, default: false  # Method for prefix is defined here
  attribute :overdue, :boolean, default: false
  # attribute_method_prefix 'date_'

  validates :due_date, presence: true
  validates :due_date, format: { with: /\A[A-Z][a-z]{2,5}day, [A-Z][a-z]{2,8} \d{2}, \d{4}\z/ }
  validates :renewed, :returned, :overdue, inclusion: { in: [true, false] }
  validates_associated :student, :book

  # Scope Methods
  scope :current_borrows, -> { where(returned: false) }

  # Class Methods
  # TODO: If there is a hold on the book, students cannot renew it --> use book_id

  private

    # Add two extra weeks to the due date
    def renew_book
      if renewed
        self.due_date = (self.created_at + 3838000).strftime("%A, %B %d, %Y")
      end
    end

    # TODO: Make sure no due dates fall on a weekend
    def no_weekends
      # if due_date contains "Saturday" || "Sunday", change it to "Monday"
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
