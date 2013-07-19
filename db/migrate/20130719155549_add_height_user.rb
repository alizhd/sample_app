class AddHeightUser < ActiveRecord::Migration
  def change
  	  	 add_column :users, :height_user, :integer
  end
end
