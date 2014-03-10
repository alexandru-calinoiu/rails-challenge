class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, limit: 90
      t.string :last_name,  limit: 90

      t.timestamps
    end
  end
end
