class AddTasksToOrgs < ActiveRecord::Migration[7.1]
  def change
    add_reference :org_profiles, :tasks
  end
end