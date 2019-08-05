class CreateDistrictsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :admins, :schools do |t|
      t.index [:school_id, :admin_id], unique: true
    end
  end
end
