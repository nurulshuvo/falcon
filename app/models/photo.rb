class Photo < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :resource
  belongs_to :product
    has_attached_file :resource, :styles => {:small => "211x120"}
end
