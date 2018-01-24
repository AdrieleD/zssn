class CreateContaminationReports < ActiveRecord::Migration
  def change
    create_table :contamination_reports do |t|
      t.references :survivor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
