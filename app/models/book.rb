class Book < ApplicationRecord
  belongs_to :library
  has_many :borrows
  has_many :students, through: :borrows
  has_many :holds
  # has_many :students, through: :holds

  # TODO: Use properties from borrows to create this instead
  # Add attribute methods
  attribute :copies, :integer
  # attribute_method_prefix 'available_'
  # attribute_method_suffix '_currently_borrowed'

  # TODO: Does not let a book with 0 `available_copies` be borrowed
  validates :title, :author, :genre, :copies, presence: true
  validates :copies, numericality: { only_integer: true, greater_than: 0 }
  validates_associated :library
  
  # Scope Methods
  def self.student_specific(student)
    includes(library: :school).where(library_id: student.school.library_ids)
  end

  def self.admin_specific(admin)
    # includes(library: :school).where(library_id: admin.school.library_ids)
  end
  
  # TODO: Change this to a selection from drop down in `app/views/partials/_book_filter.html.erb`
  def select_by_genre(genre)
    where("genre = ?", genre).abc_title
  end

  scope :abc_title, -> { order(:title, :author) }
  scope :abc_author, -> { order(:author, :title) }
  
  private

    # TODO: Use properties from borrows to create this instead
    # Define the copies attribute
    def attribute(attribute)
      send("#{attribute}=", self.copies)
    end

    # Return how many copies of the book are currently available
    # def available_attribute(attribute)
    #   send(attribute), self.copies - attribute_currently_borrowed(attribute)
    # end

    # Return how many copies of the book are currently checked out
    # def attribute_currently_borrowed(attribute)
    #   send("#{attribute}=", self.borrows.current_borrows.count)
    # end

end
