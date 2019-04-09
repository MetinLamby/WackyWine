class AddPriceToTeddies < ActiveRecord::Migration[5.2]
  def change
    add_monetize :wines, :price, currency: { present: false }
  end
end
