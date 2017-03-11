require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/json'
require 'sinatra/namespace'
require 'dotenv'
require_relative 'models/init'
require_relative 'helpers/init'
require_relative 'routes/init'

module ApiApp
  class App < Sinatra::Base

    # load route modules and helpers
    register Api
    helpers ApiHelper

    # load env variables
    Dotenv.load

    # global configs
    use Rack::Session::Pool
    configure do
      set :sessions, true
      set :inline_templates, true
    end
    
    # default errors
    error Sinatra::NotFound do
      content_type 'application/json'
      [404, '{"error":{"code":404,"message":"Not Found"}}']
    end

    error ActiveRecord::RecordNotFound do
      content_type 'application/json'
      [404, '{"error":{"code":404,"message":"Not Found"}}']
    end

    before do
      content_type 'application/json'
    end

  end
end

