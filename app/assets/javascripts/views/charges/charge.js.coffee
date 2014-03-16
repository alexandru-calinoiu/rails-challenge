class Demo.Views.Charge extends Backbone.View
	template: JST['charges/charge']
	tagName: 'li'

	render: ->
		@$el.html @template charge: @model
		@