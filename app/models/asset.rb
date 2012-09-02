class Asset < ActiveRecord::Base
   attr_accessible :title, :body, :image
  belongs_to :product
  has_attached_file :image, :styles=>{:small => "211x120#"}
end
