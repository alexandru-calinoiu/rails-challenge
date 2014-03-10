json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :paid, :amount, :currency, :refunded, :customer_id
  json.url transaction_url(transaction, format: :json)
end
