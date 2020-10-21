class AddUserIdToTwts < ActiveRecord::Migration[5.2]
  def change
    add_column :twts, :user_id, :integer
  end
end
