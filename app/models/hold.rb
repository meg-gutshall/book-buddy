class Hold < ApplicationRecord
  belongs_to :student
  belongs_to :book

  validates :available, :borrowed, :cancelled, inclusion: { in: [true, false] }
  validates_associated :student, :book

  # Set default: available, borrowed, and cancelled as false
  attribute :available, :boolean, default: false
  attribute :borrowed, :boolean, default: false
  attribute :cancelled, :boolean, default: false

  before_validation :borrow_book

  # Scope Methods
  def self.admin_specific(admin)
    # includes(library: :school).where(library_id: student.school.library_ids)
  end

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
