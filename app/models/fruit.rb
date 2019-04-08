class Fruit < ApplicationRecord
  has_many :wine_fruits
  has_many :wines, through: :wine_fruits

  validates :name, uniqueness: true, presence: true
end
