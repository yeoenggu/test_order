require 'sinatra/shopify-sinatra-app'
require "webrick/https"
require 'liquid'

class SinatraApp < Sinatra::Base
  register Sinatra::Shopify

  use Rack::Flash, :accessorize => [:info, :error, :success], :sweep => true

  configure do
    # Configure logging, WTF
    set :logging, false
    class ::Logger; alias_method :write, :<<; end
    logfile = File.join(App.root, 'log', "#{App.environment}.log")
    # Send STDs to log file
    $stdout.reopen(logfile)
    $stderr.reopen(logfile)
    $stderr.sync = true
    $stdout.sync = true
    # Weekly roll
    log  = Logger.new(logfile, 'weekly')
    log.level = Logger::DEBUG
    # use Rack::CommonLogger, log
    set :log, log

  end

  configure :development do
    require 'better_errors'
    require "sinatra/reloader"
    register Sinatra::Reloader

    also_reload 'app/**/*.rb'
    also_reload 'lib/**/*.rb'
    also_reload 'conf/**/*.rb'
    set :raise_errors, true
    use BetterErrors::Middleware
    # you need to set the application root in order to abbreviate filenames
    # within the application:
    BetterErrors.application_root = File.expand_path('..', __FILE__)
  end


  # set the scope that your app needs, read more here:
  # http://docs.shopify.com/api/tutorials/oauth
  set :scope, 'read_products, read_orders, read_script_tags, write_script_tags'

  # Your App's Home page
  # this is a simple example that fetches some products
  # from Shopify and displays them inside your app
  get '/' do
    shopify_session do
      @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
      erb :home
    end
  end

  # this endpoint recieves the uninstall webhook
  # and cleans up data, add to this endpoint as your app
  # stores more data.
  post '/uninstall' do
    webhook_session do |params|
      current_shop.destroy
    end
  end

  get '/proxy/' do
    shopify_session do
      # do something
    end

    liquid :proxy
  end

  get '/load_first_order.js' do
    # "Hello World"
    coffee :load_first_order
  end


  private

  # This method gets called when your app is installed.
  # setup any webhooks or services you need on Shopify
  # inside here.
  def after_shopify_auth
    shopify_session do
      # create an uninstall webhook, this webhook gets sent
      # when your app is uninstalled from a shop. It is good
      # practice to clean up any data from a shop when they
      # uninstall your app:

      uninstall_webhook = ShopifyAPI::Webhook.new(
        topic: 'app/uninstalled',
        address: "#{base_url}/uninstall",
        format: 'json'
      )


      begin
        uninstall_webhook.save!
      rescue => e
        raise unless uninstall_webhook.persisted?
      end

      # need to create tags
      load_script_tag = ShopifyAPI::ScriptTag.new(
        event: "onload", 
        src: "#{base_url}/load_first_order.js"
      )
      begin
        load_script_tag.save!
      rescue => e
        raise unless load_script_tag.persisted?
      end
    end
  end
end

# Require attr_accessible...
ActiveRecord::Base.send(:attr_accessible, nil)

