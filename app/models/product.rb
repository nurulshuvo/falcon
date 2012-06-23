class Product < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :photo, :resource
  validates :title, :description, :presence => true
  has_attached_file :photo, :styles => {:small => "211x120"}
  has_many :photos
  accepts_nested_attributes_for :photos
end