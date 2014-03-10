Billing.Views.Transactions ||= {}

class Billing.Views.Transactions.ShowView extends Backbone.View
  template: JST["backbone/templates/transactions/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
