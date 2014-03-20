class Store.Routers.ChargesRouter extends Backbone.Router
  initialize: (options) ->
    # When initializing the charges router, set the charges variable to the charges collection, then reset the charges collection.
    # When the charges index hears the reset event, it will add all charges to its view? When this is initialized, no views have been
    # created, so all this is doing is ensuring that whatever is in the collection (probably nothing) is replaced with the charges data from
    # options, which must be correct. From the server, presumably?
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
    # Render the view, then inject its HTML into the #charges div.
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
