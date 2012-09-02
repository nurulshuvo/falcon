class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
    	t.references :product
 	    t.timestamps
    end
  end
end
