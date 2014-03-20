Store.Views.Charges ||= {}

class Store.Views.Charges.FailedChargesView extends Backbone.View
  # The template is charges/index.jst.ejs
  template: JST["backbone/templates/charges/failed_charges"]

  addAll: () =>
    @options.charges.each(@addOne)

  # Make an individual charge view by injecting the charge data into a charge template, then append it to the table.
  addOne: (charge) =>
    view = new Store.Views.Charges.FailedChargeView({model : charge})
    @$("tbody").append(view.render().el)

  # This is called by the router when the charges view is requested. It creates a view from the charges it's passed,
  # then puts the HTML from that view on the view's el property, ready to be put into the page.
  render: =>
    # Set up the main charges index view. Set Charges.IndexView.el to a charges view containing only the header and an empty table,
    # with column headers, then add a row for each charge to that table with @addAll().
    $(@el).html(@template(charges: @options.charges.toJSON() ))
    @addAll()
    return this
