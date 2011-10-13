class CreateBasketItems < ActiveRecord::Migration
  def self.up
    create_table :basket_items do |t|
      t.integer :basket_id
      t.integer :discount
      t.integer :price
      t.timestamps
    end
  end

  def self.down
    drop_table :basket_items
  end
end
