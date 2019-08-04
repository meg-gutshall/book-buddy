class CreateDistrictsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :admins, :schools do |t|
      t.index [:admin_id, :school_id]
    end
  end
end
