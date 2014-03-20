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

  # When charges' index route is hit, make an index view out of the charges, then inject its HTML into the #charges div.
  index: ->
    @view = new Store.Views.Charges.IndexView(charges: @charges)
    # Render the view, then inject its HTML into #the charges div.
    # This should stay the same. When the index path is hit, fill the #charges div with HTML representing all charges.
    $("#charges").html(@view.render().el)




  # Needn't worry about these here.
  show: (id) ->
    charge = @charges.get(id)

    @view = new Store.Views.Charges.ShowView(model: charge)
    $("#charges").html(@view.render().el)

  edit: (id) ->
    charge = @charges.get(id)

    @view = new Store.Views.Charges.EditView(model: charge)
    $("#charges").html(@view.render().el)
