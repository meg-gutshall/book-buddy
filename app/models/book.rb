class Book < ApplicationRecord
  # attributes: { title:string, author:string, genre:string, on_shelf:boolean, library_id:integer }
  belongs_to :library
  has_many :borrows
  has_many :students, through: :borrows
  has_many :holds
  has_many :students, through: :holds

  # Scope methods
  scope :alphabetize, -> { order(:title) }
  scope :alphabetize_by_author, -> { select(:author).group(:author).order(:author) }
  scope :group_by_genre, -> { select(:genre).group(:genre).order(:genre) }

end
