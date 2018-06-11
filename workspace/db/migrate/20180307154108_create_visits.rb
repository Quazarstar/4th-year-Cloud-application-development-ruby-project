class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.string :date
      t.string :infection
      t.string :injury
      t.string :observations
      t.string :hospital_request
      t.string :condition
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
