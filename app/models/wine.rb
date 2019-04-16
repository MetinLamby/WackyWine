class Wine < ApplicationRecord
  belongs_to :winetype

  has_many :wine_fruits
  has_many :fruits, through: :wine_fruits

  has_many :order_items
  has_many :orders, through: :order_items

  validates :name, uniqueness: true, presence: true

  monetize :price_cents
end
