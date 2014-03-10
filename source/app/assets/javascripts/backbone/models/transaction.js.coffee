class Billing.Models.Transaction extends Backbone.Model
  paramRoot: 'transaction'

  defaults:
    amount: 0

class Billing.Collections.TransactionsCollection extends Backbone.Collection
  model: Billing.Models.Transaction
  url: '/transactions'
