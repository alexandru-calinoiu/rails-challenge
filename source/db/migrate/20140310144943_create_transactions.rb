class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.boolean :paid,      default: false
      t.decimal :amount,    default: 0, precision: 11, scale: 2
      t.string :currency,   default: :usd, limit: 3
      t.boolean :refunded,  default: false
      t.references :customer, index: true

      t.timestamps
    end
  end
end
