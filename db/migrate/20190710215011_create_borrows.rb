class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.belongs_to :student
      t.belongs_to :book
      t.string :due_date
      t.boolean :renewed
      t.boolean :returned
      t.boolean :overdue

      t.timestamps
    end
  end
end
