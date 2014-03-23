Store.Views.Charges ||= {}

class Store.Views.Charges.FailedChargesView extends Backbone.View
  id: 'failed_charges_container'
  template: JST["backbone/templates/charges/failed_charges"]

  addAll: () =>
    @options.charges.each(@addOne)

  addOne: (charge) =>
    view = new Store.Views.Charges.FailedChargeView({model : charge})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(charges: @options.charges.toJSON() ))
    @addAll()
    return this
