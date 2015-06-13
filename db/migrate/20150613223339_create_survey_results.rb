class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.string :mobile
      t.string :liberty
      t.string :sexy
      t.string :wigs_wired

      t.timestamps null: false
    end
  end
end
