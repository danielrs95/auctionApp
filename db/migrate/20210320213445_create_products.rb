class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :image
      t.decimal :price
      t.datetime :auctionDate
      t.datetime :startingDate
      t.datetime :endingDate

      t.timestamps
    end
  end
end
