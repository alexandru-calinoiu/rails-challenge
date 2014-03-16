class Demo.Views.ChargesIndex extends Backbone.View
	template: JST['charges/index']

	initialize: ->
		@collection.on('reset', @render, @)
		@collection.on('add', @appendCharge, @)

	render: -> 
		@$el.html @template()
		@collection.each(@appendCharge)
		@

	appendCharge: (charge) =>
    view = new Demo.Views.Charge(model: charge)
    paid = charge.get("paid")
    refunded = charge.get("refunded")
    if paid == true
      if refunded == true
        @$('#disputed_charges').append(view.render().el)
      else
        @$('#charges').append(view.render().el)
    else
      @$('#failed_charges').append(view.render().el)