Billing.Views.Transactions ||= {}

class Billing.Views.Transactions.IndexView extends Backbone.View
  template: JST["backbone/templates/transactions/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addTransactions: (status, condition) =>
    @$el.append @template(status: status)
    _.each @collection.where(condition), (transaction) =>
      view = new Billing.Views.Transactions.TransactionView({model : transaction})
      @$("#table#{status} tbody").append(view.render().el)

  render: =>
    @$el.html ""
    @addTransactions("Failed",      status: "failed")
    @addTransactions("Disputed",    status: "disputed")
    @addTransactions("Successful",  status: "successful")

    return this
