class RemoveFriendCol < ActiveRecord::Migration[7.1]
  def change
    change_table :user_profiles do |t|
        t.remove :friends_id
    end
  end
end