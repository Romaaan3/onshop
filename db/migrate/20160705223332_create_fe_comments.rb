class CreateFeComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :users, index: true, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
