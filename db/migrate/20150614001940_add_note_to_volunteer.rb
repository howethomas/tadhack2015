class AddNoteToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :note, :string
  end
end
