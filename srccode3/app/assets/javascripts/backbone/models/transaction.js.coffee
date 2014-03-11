class Srccode3.Models.Transaction extends Backbone.Model
  paramRoot: 'transaction'

  defaults:
    created: null
    paid: null
    amount: null
    currency: null
    refunded: null
    first_name: null
    last_name: null

class Srccode3.Collections.TransactionsCollection extends Backbone.Collection
  model: Srccode3.Models.Transaction
  url: '/transactions'
  