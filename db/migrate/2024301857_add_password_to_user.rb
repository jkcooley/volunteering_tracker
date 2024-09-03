class AddPasswordToUser < ActiveRecord::Migration[7.1]
    def change
      add_column :user_profiles, :password, :string
    end
  end