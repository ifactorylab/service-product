class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, id: :uuid do |t|
      t.string :site_id
      t.string :name

      t.timestamps null: false
    end
  end
end
