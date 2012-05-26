class CreateProductTags < ActiveRecord::Migration
  def change
    create_table :product_tags do |t|
      t.integer :tag_id
      t.integer :product_id

      t.timestamps
    end
  end
end
