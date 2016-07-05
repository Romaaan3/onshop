class Product < ActiveRecord::Base
  belongs_to :brands
  belongs_to :categories
  has_many :comments
end
