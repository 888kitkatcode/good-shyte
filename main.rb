# Start the application by running:
# rerun 'ruby main.rb'

require 'sinatra'
require 'pry'
require 'bcrypt'
require 'httparty'

# current date
require 'date'

# this makes the session hash work
enable :sessions

# database
require './db/db'

# models
require './models/tv_series'
require './models/user'

# controllers
require './controllers/tv_series_controller'
require './controllers/sessions_controller'
require './controllers/users_controller'

# helpers
require './helpers/sessions_helper'