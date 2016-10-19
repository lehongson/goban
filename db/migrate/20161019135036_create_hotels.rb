class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :countRoom
      t.text :introduction
      t.integer :hotel_type
      t.string :phone_number
      t.string :website
      t.integer :score_average
      t.decimal :price

      t.timestamps
    end
  end
end
