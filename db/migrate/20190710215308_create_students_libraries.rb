class CreateStudentsLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :students_libraries do |t|
      t.belongs_to :student_id
      t.belongs_to :library_id
      
      t.timestamps
    end
  end
end
