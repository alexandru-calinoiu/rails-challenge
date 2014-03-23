Store.Views.Charges ||= {}

class Store.Views.Charges.DisputedChargesView extends Backbone.View
  id: 'disputed_charges_container'
  template: JST["backbone/templates/charges/disputed_charges"]

  addAll: () =>
    @options.charges.each(@addOne)

  addOne: (charge) =>
    view = new Store.Views.Charges.DisputedChargeView({model : charge})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(charges: @options.charges.toJSON() ))
    @addAll()
    return this
