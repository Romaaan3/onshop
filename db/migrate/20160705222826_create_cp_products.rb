class CreateCpProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :brands, index: true, foreign_key: true
      t.references :categories, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.float :price
      t.integer :discount, default: 0

      t.timestamps null: false
    end
  end
end
