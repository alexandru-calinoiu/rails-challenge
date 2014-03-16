class Demo.Routers.Charges extends Backbone.Router
	routes:
		'': 'index'
	
	initialize: -> 
		@collection = new Demo.Collections.Charges()
		@collection.fetch()

	index: ->
    view = new Demo.Views.ChargesIndex(collection: @collection)
    $('#container').html(view.render().el)