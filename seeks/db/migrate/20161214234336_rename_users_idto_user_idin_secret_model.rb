class RenameUsersIdtoUserIdinSecretModel < ActiveRecord::Migration
  def change
  	rename_column(:secrets, :users_id, :user_id)
  end
end
