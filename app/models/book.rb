class Book < ApplicationRecord
  # attributes: { title:string, author:string, genre:string, copies:integer, library_id:integer }
  belongs_to :library
  has_many :borrows
  has_many :students, through: :borrows
  has_many :holds
  # has_many :students, through: :holds

  ## Move to `app/helpers/books_helper.rb` ##
  # If there are > 0 available copies, show a borrow button
  # If there are 0 available copies, show a hold button

  attr_accessor :copies

  # Add attribute methods
  attribute_method_prefix 'available_'
  attribute_method_suffix '_borrowed'
  define_attribute_methods 'copies'

  # Scope methods
  scope :alphabetize_by_title, -> { order(:title, :author) }
  scope :alphabetize_by_author, -> { order(:author, :title) }
  # Change this to a selection from drop down in `app/views/partials/_book_filter.html.erb`
  scope :select_by_genre, -> { where("genre = ?", params[:genre]).alphabetize_by_title }

  private

    # Returns how many copies of the book are currently available
    def available_attribute(attribute)
      # send(attribute)
    end

    # Returns how many copies of the book are currently checked out
    def attribute_borrowed(attribute)
      # send(attribute)
    end

end
