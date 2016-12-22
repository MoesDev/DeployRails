class AddRelationhiptoUserforComment < ActiveRecord::Migration
  def change
  	add_reference(:secrets, :users, index: true)
  end
end
