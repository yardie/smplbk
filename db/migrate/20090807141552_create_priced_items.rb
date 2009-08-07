class CreatePricedItems < ActiveRecord::Migration
  def self.up
    create_table :priced_items do |t|
      t.string :name
      t.integer :item_type_id
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :priced_items
  end
end
