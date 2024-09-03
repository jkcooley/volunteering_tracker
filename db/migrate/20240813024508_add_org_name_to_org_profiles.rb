class AddOrgNameToOrgProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :org_profiles, :name, :string
  end
end
