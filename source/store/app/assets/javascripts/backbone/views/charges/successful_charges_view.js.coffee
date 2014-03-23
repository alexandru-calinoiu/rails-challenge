Store.Views.Charges ||= {}

class Store.Views.Charges.SuccessfulChargesView extends Backbone.View
  template: JST["backbone/templates/charges/successful_charges"]
  id: 'successful_charges_container'
  addAll: () =>
    @options.charges.each(@addOne)

  # Make an individual charge view by injecting the charge data into a charge template, then append it to the table.
  addOne: (charge) =>
    view = new Store.Views.Charges.ChargeView({model : charge})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(charges: @options.charges.toJSON() ))
    @addAll()
    return this
