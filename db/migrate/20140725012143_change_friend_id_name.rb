class ChangeFriendIdName < ActiveRecord::Migration
  def change
  	rename_column :friendships, :friendship_id, :friend_id

  end
end
