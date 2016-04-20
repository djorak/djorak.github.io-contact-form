require 'rubygems'
require 'sinatra'
require 'json'
require 'rack/recaptcha'
require 'pony'

use Rack::Recaptcha, :public_key => ENV['RECAPTCHA_SITE_KEY'], :private_key => ENV['RECAPTCHA_SECRET_KEY']
helpers Rack::Recaptcha::Helpers

require './application'
run Sinatra::Application
