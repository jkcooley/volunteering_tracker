class AddWordsToOrgProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :org_profiles, :mission_statement, :string
    add_column :org_profiles, :blurb, :string
  end
end
