class Product < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :photo
  validates :title, :description, :presence => true
  has_attached_file :photo, :styles => {:small => "130x130>"}

end