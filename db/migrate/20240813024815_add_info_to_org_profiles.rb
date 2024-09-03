class AddInfoToOrgProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :org_profiles, :contact_info, :string
    add_column :org_profiles, :opportunities, :string
    add_column :org_profiles, :conversion_rate, :float
  end
end
