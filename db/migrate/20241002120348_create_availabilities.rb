class CreateAvailabilities < ActiveRecord::Migration[7.2]
  def change
    create_table :availabilities do |t|
      t.date :start_on
      t.date :end_on
      t.references :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
