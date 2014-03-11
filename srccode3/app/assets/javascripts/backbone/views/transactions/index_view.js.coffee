Srccode3.Views.Transactions ||= {}

class Srccode3.Views.Transactions.IndexView extends Backbone.View
  template1: JST["backbone/templates/transactions/charges_disputed"]
  template2: JST["backbone/templates/transactions/charges_failed"]
  template3: JST["backbone/templates/transactions/charges_successful"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (transaction) =>
    view = new Srccode3.Views.Transactions.TransactionView({model : transaction})
    @$("tbody").append(view.render().el)
    

  render: =>
    @$el.html(@template2(transactions: @collection.toJSON()))    
    @addAll()

    return this
