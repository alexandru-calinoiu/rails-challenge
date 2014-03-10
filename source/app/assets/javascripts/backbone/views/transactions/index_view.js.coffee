Billing.Views.Transactions ||= {}

class Billing.Views.Transactions.IndexView extends Backbone.View
  template: JST["backbone/templates/transactions/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (transaction) =>
    view = new Billing.Views.Transactions.TransactionView({model : transaction})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(transactions: @collection.toJSON() ))
    @addAll()

    return this
