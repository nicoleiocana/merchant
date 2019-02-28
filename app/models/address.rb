class Address < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :line1, :city, :state, :zip, presence: true
  validates :zip, format: { with: /\A\d{5}(-\d{4})?\z/, message: "should be in the form 12345 or 12345-1234"}
  validates :state, format: { with: /\A[A-Z]{2}\z/, message: "should be its two-letter uppercase abbreviation" }
  
  def to_s
    [line1, line2, city, state, zip].compact.join(', ')
  end
  
end
