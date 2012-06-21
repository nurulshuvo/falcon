class CreateAdminUser < ActiveRecord::Migration
  def up
  	@admin = Admin.create(:email => 'admin@falcon.com', :password => '12345678', :password_confirmation => '12345678')
  end

  def down
  end
end
