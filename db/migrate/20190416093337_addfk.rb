class Addfk < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :order_items, :wines
  end
end
