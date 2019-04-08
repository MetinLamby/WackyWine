class WineFruit < ApplicationRecord
  belongs_to :wine
  belongs_to :fruit
end
