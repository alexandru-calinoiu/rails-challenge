class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      
      t.boolean :paid
      t.integer :amount
      t.string :currency
      t.boolean :refunded
      t.integer :customer_id
      t.datetime :created
      
      t.timestamps
    end
  end
end
