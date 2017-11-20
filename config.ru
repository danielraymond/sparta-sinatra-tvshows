require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/tvshows.rb'
require_relative './controllers/tv_shows_controller.rb'

run TVShowController
