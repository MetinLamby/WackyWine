class Winetype < ApplicationRecord
  has_many :wines

  validates :name, uniqueness: true, presence: true
end
