# If Store.Views.Charges doesn't exist, set it to an empty object.
Store.Views.Charges ||= {}

class Store.Views.Charges.DisputedChargeView extends Backbone.View
  template: JST["backbone/templates/charges/disputed_charge"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this