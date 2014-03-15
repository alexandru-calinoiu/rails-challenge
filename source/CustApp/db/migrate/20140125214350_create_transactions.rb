class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :customer
      t.boolean :paid
      t.decimal :amount
      t.string :currency
      t.boolean :refunded

      t.timestamps
    end
  end
end