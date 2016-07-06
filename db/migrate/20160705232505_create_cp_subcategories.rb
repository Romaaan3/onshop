class CreateCpSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :description
      t.references :categories, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
