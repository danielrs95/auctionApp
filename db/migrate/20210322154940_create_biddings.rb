class CreateBiddings < ActiveRecord::Migration[6.1]
  def change
    create_table :biddings do |t|
      t.decimal :price
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
