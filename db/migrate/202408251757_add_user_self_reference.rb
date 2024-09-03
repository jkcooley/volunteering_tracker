class AddUserSelfReference < ActiveRecord::Migration[7.1]
    def change
      change_table :user_profiles do |t|
        t.references :friends
      end
    end
  end