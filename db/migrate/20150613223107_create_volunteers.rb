class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :twitter_handle
      t.string :mobile

      t.timestamps null: false
    end
  end
end
