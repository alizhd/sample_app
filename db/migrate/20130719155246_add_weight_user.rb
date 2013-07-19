class AddWeightUser < ActiveRecord::Migration
  def change
  	 add_column :users, :weight_user, :integer
  end
end
