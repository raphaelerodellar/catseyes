class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.date :start_on
      t.date :end_on
      t.string :booking_status
      t.integer :total_price
      t.text :user_comment
      t.text :owner_comment
      t.references :cat, null: false, foreign_key: true
      t.references :use, null: false, foreign_key: true

      t.timestamps
    end
  end
end
