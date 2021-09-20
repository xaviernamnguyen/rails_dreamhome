class AddUserIdToRealestate < ActiveRecord::Migration[6.1]
  def change
    add_column :realestates, :user_id, :integer
    add_index :realestates, :user_id
  end
end
