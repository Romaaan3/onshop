class AddRateToComment < ActiveRecord::Migration
  def change
    add_column :comments, :rate, :integer, default: 0
  end
end
