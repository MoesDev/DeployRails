class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.text :secret
      t.integer :likes, :default => 0

      t.timestamps null: false
    end
  end
end
