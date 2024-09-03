class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :blurb
      t.float :points
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
