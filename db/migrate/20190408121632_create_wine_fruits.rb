class CreateWineFruits < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_fruits do |t|
      t.references :wine, foreign_key: true
      t.references :fruit, foreign_key: true

      t.timestamps
    end
  end
end
