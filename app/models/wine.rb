class Wine < ApplicationRecord
  belongs_to :winetype
  has_many :wine_fruits
  has_many :fruits, through: :wine_fruits

  validates :name, uniqueness: true, presence: true
end
