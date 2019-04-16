class Dropcartcolun < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :ordercart_id
  end
end
