class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :mobile
      t.string :name
      t.string :can_bring

      t.timestamps null: false
    end
  end
end
