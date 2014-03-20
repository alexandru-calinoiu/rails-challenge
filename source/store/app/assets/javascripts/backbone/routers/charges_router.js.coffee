class Store.Routers.ChargesRouter extends Backbone.Router
  initialize: (options) ->
    @charges = new Store.Collections.ChargesCollection()
    @charges.reset options.charges

  routes:
    "new"      : "newCharge"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCharge: ->
    @view = new Store.Views.Charges.NewView(collection: @charges)
    $("#charges").html(@view.render().el)

  index: ->
    @view = new Store.Views.Charges.IndexView(charges: @charges)
    $("#charges").html(@view.render().el)

  show: (id) ->
    charge = @charges.get(id)

    @view = new Store.Views.Charges.ShowView(model: charge)
    $("#charges").html(@view.render().el)

  edit: (id) ->
    charge = @charges.get(id)

    @view = new Store.Views.Charges.EditView(model: charge)
    $("#charges").html(@view.render().el)
