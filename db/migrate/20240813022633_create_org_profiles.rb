class CreateOrgProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :org_profiles do |t|

      t.timestamps
    end
  end
end
