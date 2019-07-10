class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.belongs_to :student_id
      t.belongs_to :book_id
      t.date :due_date
      t.boolean :renewal

      t.timestamps
    end
  end
end
