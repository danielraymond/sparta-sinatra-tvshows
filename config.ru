require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/tv_shows_controller.rb'

run TVShowController
