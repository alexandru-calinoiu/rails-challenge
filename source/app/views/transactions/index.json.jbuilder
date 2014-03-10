json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :created, :paid, :amount, :currency, :refunded, :customer_id, :status
  json.customer transaction.customer, :full_name
  json.url transaction_url(transaction, format: :json)
end
