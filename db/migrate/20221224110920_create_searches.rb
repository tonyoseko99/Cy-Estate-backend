class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :location
      t.string :price_range

      t.timestamps
    end
  end
end
