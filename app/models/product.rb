class Product < ApplicationRecord
  validates :price, :title, :description, presence: true
  validates :price, numericality: true
  validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  has_many :order_items
  
  def price=(input)
    super(input.tr('$, ', ''))
  end
  
end
