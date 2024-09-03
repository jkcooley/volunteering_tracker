class AddTasksToUsers < ActiveRecord::Migration[7.1]
    def change
      add_reference :user_profiles, :tasks
    end
  end