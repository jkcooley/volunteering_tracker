class AddUserRefToTask < ActiveRecord::Migration[7.1]
    def change
      change_table :tasks do |t|
        t.references :user_profile, foreign_key: true
      end
    end
  end