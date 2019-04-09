class Adddescriptiontowine < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :description, :string
  end
end
