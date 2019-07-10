class StudentsLibrary < ApplicationRecord
  belongs_to :student
  belongs_to :library
end
