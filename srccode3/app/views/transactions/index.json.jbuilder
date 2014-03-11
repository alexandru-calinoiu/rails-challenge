json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :created, :paid, :amount, :currency, :refunded, :first_name, :last_name
  json.url transaction_url(transaction, format: :json)
end
