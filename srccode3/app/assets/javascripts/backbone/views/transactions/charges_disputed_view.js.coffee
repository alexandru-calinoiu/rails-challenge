Srccode3.Views.Transactions ||= {}

class Srccode3.Views.Transactions.ChargesDisputedView extends Backbone.View
  template: JST["backbone/templates/transactions/charges_disputed"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (transaction) =>
    view = new Srccode3.Views.Transactions.TransactionView({model : transaction})
    @$("tbody").append(view.render().el)
    

  render: =>
    @$el.html(@template(transactions: @collection.toJSON()))    
    @addAll()

    return this
