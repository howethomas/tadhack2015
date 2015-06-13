class CreateSigners < ActiveRecord::Migration
  def change
    create_table :signers do |t|
      t.string :mobile
      t.string :name
      t.string :town
      t.boolean :signed

      t.timestamps null: false
    end
  end
end
