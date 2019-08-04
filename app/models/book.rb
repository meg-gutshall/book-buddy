class Book < ApplicationRecord
  # attributes: { title:string, author:string, genre:string, copies:integer, library_id:integer }
  belongs_to :library
  has_many :borrows
  has_many :students, through: :borrows
  has_many :holds
  # has_many :students, through: :holds

  # Add validations
  # Does not let a book with 0 `available_copies` be borrowed

  
  # TODO: Use properties from borrows to create this instead
  # Add attribute methods
  attribute :copies, :integer
  # attribute_method_prefix 'available_'
  # attribute_method_suffix '_currently_borrowed'

  # Scope Methods
  def self.student_specific(student)
    includes(library: :school).where(library_id: student.school.library_ids)
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
