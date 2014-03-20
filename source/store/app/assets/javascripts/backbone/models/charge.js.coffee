class Store.Models.Charge extends Backbone.Model
  paramRoot: 'charge'

  defaults:
    created: null
    paid: null
    amount: null
    currency: null
    refunded: null
    customer_id: null

class Store.Collections.ChargesCollection extends Backbone.Collection
  model: Store.Models.Charge
  url: '/charges'
