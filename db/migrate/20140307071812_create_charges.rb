class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.boolean :paid
      t.float :amount
      t.string :currency
      t.boolean :refunded
      t.references :customer
      t.integer :status

      t.timestamps
    end
    
    add_index :charges, :customer_id
  end
end
