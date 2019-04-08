class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :sku
      t.string :name
      t.references :winetype, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end
