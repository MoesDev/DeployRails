class DeleteLikeColumnfromSecret < ActiveRecord::Migration
  def change
  	remove_column :secrets, :likes
  end
end
