# Load the Rails application.
require File.expand_path('../application', __FILE__)

# I required this because running the rspec test on the charges index view gave a warning, which recommended explicitly requiring EJS.
require 'ejs'

# Initialize the Rails application.
Store::Application.initialize!
