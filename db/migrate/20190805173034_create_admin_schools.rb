class CreateAdminSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_schools do |t|
      t.belongs_to :admin, index: true, foreign_key: true
      t.belongs_to :school, index: true, foreign_key: true

      t.timestamps
    end
  end
end
