class PricedItem < ActiveRecord::Base

  has_many :booking_items
  belongs_to :item_type

  validates_presence_of :name, :item_type_id
  validates_uniqueness_of :name
  validates_numericality_of :price
  validate :price_must_be_at_least_a_penny

  protected

  def price_must_be_at_least_a_penny
    errors.add(:price, 'should be at least 0.01' ) if price.nil? || price < 0.01
  end


end

