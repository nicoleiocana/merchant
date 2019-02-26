class Product < ApplicationRecord
  validates :price, :title, :description, presence: true
  validates_numericality_of :price
  
  def price=(input)
    super(input.tr('$, ', ''))
  end
  
end
