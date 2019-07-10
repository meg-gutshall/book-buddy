class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.date :due_date
      t.boolean :renewal

      t.timestamps
    end
  end
end
