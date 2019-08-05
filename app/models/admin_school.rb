class AdminSchool < ApplicationRecord
  belongs_to :admin
  belongs_to :school
end