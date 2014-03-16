window.Demo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
			new Demo.Routers.Charges()
			Backbone.history.start(pushState: true)

$(document).ready ->
  Demo.init()
