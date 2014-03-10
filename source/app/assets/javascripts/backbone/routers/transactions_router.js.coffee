class Billing.Routers.TransactionsRouter extends Backbone.Router
  initialize: (options) ->
    @transactions = new Billing.Collections.TransactionsCollection()
    @transactions.reset options.transactions

  routes:
    "new"      : "newTransaction"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newTransaction: ->
    @view = new Billing.Views.Transactions.NewView(collection: @transactions)
    $("#transactions").html(@view.render().el)

  index: ->
    @view = new Billing.Views.Transactions.IndexView(collection: @transactions)
    $("#transactions").html(@view.render().el)

  show: (id) ->
    transaction = @transactions.get(id)

    @view = new Billing.Views.Transactions.ShowView(model: transaction)
    $("#transactions").html(@view.render().el)

  edit: (id) ->
    transaction = @transactions.get(id)

    @view = new Billing.Views.Transactions.EditView(model: transaction)
    $("#transactions").html(@view.render().el)
