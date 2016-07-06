class CreateCpSubsubcategories < ActiveRecord::Migration
  def change
    create_table :subsubcategories do |t|
      t.references :subcategories, index: true, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
