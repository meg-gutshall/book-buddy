class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.belongs_to :library_id
      t.string :title
      t.string :author
      t.string :genre
      t.boolean :on_shelf

      t.timestamps
    end
  end
end
