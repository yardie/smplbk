class CreateBookingItems < ActiveRecord::Migration
  def self.up
    create_table :booking_items do |t|
      t.integer :booking_id
      t.integer :item_price_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :booking_items
  end
end
