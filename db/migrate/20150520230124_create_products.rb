class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, id: :uuid do |t|
      t.string :category_id
      t.string :name
      t.text :description
      t.float :price
      t.float :discount
      t.string :unit
      t.string :status
      t.string :image

      t.timestamps null: false
    end
  end
end
