class CreateHolds < ActiveRecord::Migration[5.2]
  def change
    create_table :holds do |t|
      t.belongs_to :student
      t.belongs_to :book
      t.boolean :borrowed

      t.timestamps
    end
  end
end
