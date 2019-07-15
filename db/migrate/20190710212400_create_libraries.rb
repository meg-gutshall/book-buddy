class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.belongs_to :school
      t.integer :room_number

      t.timestamps
    end
  end
end
