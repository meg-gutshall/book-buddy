class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.belongs_to :admin
      t.string :name

      t.timestamps
    end
  end
end
