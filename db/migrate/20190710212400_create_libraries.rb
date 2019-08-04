class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.belongs_to :school
      t.string :room

      t.timestamps
    end
  end
end
