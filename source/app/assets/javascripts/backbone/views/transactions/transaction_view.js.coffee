Billing.Views.Transactions ||= {}

class Billing.Views.Transactions.TransactionView extends Backbone.View
  template: JST["backbone/templates/transactions/transaction"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @model.set("created", moment(@model.get("date")).format("YYYY-MM-DD"))
    @$el.html(@template(@model.toJSON() ))
    return this
