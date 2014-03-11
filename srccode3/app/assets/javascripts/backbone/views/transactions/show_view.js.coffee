Srccode3.Views.Transactions ||= {}

class Srccode3.Views.Transactions.ShowView extends Backbone.View
  template: JST["backbone/templates/transactions/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
