class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :created_by
      t.date :created_at
      t.string :updated_by
      t.date :updated_at

      t.timestamps null: false
    end
  end
end
