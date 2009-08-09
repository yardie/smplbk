class Booking < ActiveRecord::Base

  has_many :booking_items

  def new_booking_item_attributes=(booking_item_attributes)
    booking_item_attributes.each do |attributes|
      booking_items.build(attributes) unless attributes[:quantity].to_i <= 0
    end
  end

  after_update :save_booking_items

  def existing_booking_item_attributes=(booking_item_attributes)
    booking_items.reject(&:new_record?).each do |booking_item|
      attributes = booking_item_attributes[booking_item.id.to_s]
      if attributes[:quantity].to_i > 0
        booking_item.attributes = attributes
      else
        booking_items.delete(booking_item)
      end
    end
  end

  def save_booking_items
    booking_items.each do |booking_item|
      booking_item.save(false)
    end
  end

end
