class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items
  has_many :wines, through: :order_items

  monetize :amount_cents
end
