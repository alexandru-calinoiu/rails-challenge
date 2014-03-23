Store.Views.Charges ||= {}

class Store.Views.Charges.EditView extends Backbone.View
  template : JST["backbone/templates/charges/edit"]

  events :
    "submit #edit-charge" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (charge) =>
        @model = charge
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
