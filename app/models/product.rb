class Product < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :assets_attributes
  validates :title, :description, :presence => true
 
  has_many :assets, :dependent=> :destroy
  accepts_nested_attributes_for :assets, :allow_destroy=>true
end