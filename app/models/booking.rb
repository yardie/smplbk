class Booking < ActiveRecord::Base

  has_many :booking_items

end
