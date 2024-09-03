class AddOrgRefToTask < ActiveRecord::Migration[7.1]
  def change
    change_table :tasks do |t|
      t.references :org_profile, null: false, foreign_key: true
    end
  end
end