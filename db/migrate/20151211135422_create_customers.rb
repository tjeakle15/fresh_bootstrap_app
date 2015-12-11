class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :company
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone1
      t.string :phone2
      t.string :fax1
      t.string :fax2
      t.string :email
      t.string :website
      t.string :created_by
      t.date :created_at
      t.string :updated_by
      t.date :updated_at

      t.timestamps null: false
    end
  end
end
