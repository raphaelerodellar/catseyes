class CreateCats < ActiveRecord::Migration[7.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :size
      t.boolean :heavy_hair_loss, default: false
      t.boolean :sweet_cuddly_temper, default: false
      t.boolean :strong_purring, default: false
      t.text :description
      t.text :address
      t.integer :price_per_day
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
