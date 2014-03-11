class Srccode3.Routers.TransactionsRouter extends Backbone.Router
  initialize: (options) ->
    @transactions = new Srccode3.Collections.TransactionsCollection()
    @transactions_failed = new Srccode3.Collections.TransactionsCollection()
    @transactions_disputed = new Srccode3.Collections.TransactionsCollection()
    @transactions_successful = new Srccode3.Collections.TransactionsCollection()
    
    @transactions.reset options.transactions
    @transactions_failed.reset options.transactions_failed
    @transactions_disputed.reset options.transactions_disputed
    @transactions_successful.reset options.transactions_successful

  routes:
    "new"      : "newTransaction"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newTransaction: ->
    @view = new Srccode3.Views.Transactions.NewView(collection: @transactions)
    $("#transactions").html(@view.render().el)

  index: ->
    
    @view = new Srccode3.Views.Transactions.ChargesFailedView(collection: @transactions_failed)
    $("#transactions1").html(@view.render().el)

    @view = new Srccode3.Views.Transactions.ChargesDisputedView(collection: @transactions_disputed)
    $("#transactions2").html(@view.render().el)

    @view = new Srccode3.Views.Transactions.ChargesSuccessfulView(collection: @transactions_successful)    
    $("#transactions3").html(@view.render().el)

  show: (id) ->
    transaction = @transactions.get(id)

    @view = new Srccode3.Views.Transactions.ShowView(model: transaction)
    $("#transactions").html(@view.render().el)

  edit: (id) ->
    transaction = @transactions.get(id)

    @view = new Srccode3.Views.Transactions.EditView(model: transaction)
    $("#transactions").html(@view.render().el)
