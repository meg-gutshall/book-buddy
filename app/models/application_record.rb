class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Student & Admin Class Method
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
