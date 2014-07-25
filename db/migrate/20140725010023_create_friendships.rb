class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      	t.integer :user_id, index: true
      	t.integer :friendship_id, index: true

      	t.timestamps
    end
  end
end
