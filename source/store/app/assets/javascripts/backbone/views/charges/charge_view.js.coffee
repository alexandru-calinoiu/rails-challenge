Store.Views.Charges ||= {}

class Store.Views.Charges.ChargeView extends Backbone.View
  template: JST["backbone/templates/charges/charge"]
  className: "chargeView"
  tagName: "tr"

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
