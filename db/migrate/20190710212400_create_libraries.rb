class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :school_name
      t.string :location

      t.timestamps
    end
  end
end
