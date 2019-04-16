class Dropcart < ActiveRecord::Migration[5.2]
  def change
    drop_table :ordercarts
  end
end
