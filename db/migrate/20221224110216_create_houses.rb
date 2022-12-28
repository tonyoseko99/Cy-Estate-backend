class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :address
      t.integer :price
      t.integer :bedrooms
      t.string :description
      t.string :image
      

      t.timestamps
    end
  end
end
