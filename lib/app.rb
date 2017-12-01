require 'sinatra'
require "sinatra/content_for"
require "sinatra/activerecord"
require 'sinatra/shopify-sinatra-app'
require "webrick/https"
require 'liquid'
require 'tilt/coffee'
require 'haml'
require 'pry'
require './lib/jobs/increment_job'

require 'httplog'
require 'padrino-helpers'
require 'airbrake-ruby'

Airbrake.configure do |c|
  c.project_id = 164967
  c.project_key = '6201ef180b9f56f69667f0b2cc4c2d22'
   # Display debug output.
  c.logger.level = Logger::DEBUG
end

class SinatraApp < Sinatra::Base
  register Sinatra::Shopify
  register Padrino::Helpers
  helpers Sinatra::ContentFor

  use Rack::Flash, :accessorize => [:info, :error, :success], :sweep => true
  set :static, true

  enable :sessions

  configure do 
    HttpLog.configure do |config|
     
      # You can assign a different logger
      config.logger = Logger.new($stdout)
      
      # I really wouldn't change this...
      config.severity = Logger::Severity::DEBUG
      
      # Tweak which parts of the HTTP cycle to log...
      config.log_connect   = true
      config.log_request   = true
      config.log_headers   = true
      config.log_data      = true
      config.log_status    = true
      config.log_response  = true
      config.log_benchmark = true
      
      # ...or log all request as a single line by setting this to `true`
      config.compact_log = false 
      
      # Prettify the output - see below
      config.color = false
      
      # Limit logging based on URL patterns
      config.url_whitelist_pattern = /.*/
      config.url_blacklist_pattern = nil
    end
  end

  configure :development do
    require 'pry'
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

    # HttpLog.configure do |config|
     
    #   # You can assign a different logger
    #   config.logger = Logger.new($stdout)
      
    #   # I really wouldn't change this...
    #   config.severity = Logger::Severity::DEBUG
      
    #   # Tweak which parts of the HTTP cycle to log...
    #   config.log_connect   = true
    #   config.log_request   = true
    #   config.log_headers   = true
    #   config.log_data      = true
    #   config.log_status    = true
    #   config.log_response  = true
    #   config.log_benchmark = true
      
    #   # ...or log all request as a single line by setting this to `true`
    #   config.compact_log = false 
      
    #   # Prettify the output - see below
    #   config.color = false
      
    #   # Limit logging based on URL patterns
    #   config.url_whitelist_pattern = /.*/
    #   config.url_blacklist_pattern = nil
    # end
  end

  # set the scope that your app needs, read more here:
  # http://docs.shopify.com/api/tutorials/oauth
  set :scope, 'read_products, read_orders, read_script_tags, write_script_tags'

  # Your App's Home page
  # this is a simple example that fetches some products
  # from Shopify and displays them inside your app
  get '/' do
    shopify_session do
      # need this to test whether the token is valid.  
      @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
      # retrieve setting
      @setting = current_shop.setting
      haml :home, :layout => :first_order_app
    end
  end

  # this endpoint recieves the uninstall webhook
  # and cleans up data, add to this endpoint as your app
  # stores more data.
  post '/uninstall' do
    webhook_session do |params|
      current_shop.destroy
      logout
    end
    puts "session: " +  session[:shopify].to_s
    # logout
  end
  
  # this endpoint recieves the order webhook
  # and cleans up data, add to this endpoint as your app
  # stores more data.
  post '/order' do
    webhook_session do |params|
      # if there is a discount code
      if params["discount_codes"][0]
        if params["discount_codes"][0]["code"] == current_shop.setting.discount_code
          my_webhook_job(IncrementJob, params)
        else 
          puts "the discount code does not match"
        end
      else
        puts "there are no discount_code"
      end
    end
  end
  
  @@font = {
    'Serif' => "Georgia, 'Times New Roman', Times, serif",
    'Sans Serif' => "Helvetica, Arial, sans-serif",
    'Arial' => "Arial, Helvetica, sans-serif",
    'Arial Black' => "'Arial Black', Gadget, sans-serif",
    'Cambria' => "Cambria, serif",
    'Calibri' => "Calibri, sans-serif",
    'Courier New' => "'Courier New', monospace",
    'Futura'  => "Futura, sans-serif",
    'Georgia' => "Georgia, serif",
    'Helvetica' => "Helvetica, sans-serif",
    'Lucida Grande' => "'Lucida Grande', 'Lucida Sans Unicode', sans-serif",
    'Tahoma' => "Tahoma, Geneva, sans-serif",
    'Times New Roman' => "'Times New Roman', Times, serif",
    'Trebuchet MS' => "'Trebuchet MS', sans-serif",
    'Verdana' => "Verdana, Geneva"
  }

  post '/form_setting' do
    shopify_session do
      # retrieve setting
      @setting = current_shop.setting
      discount_code = params['discount_code']
      @setting.discount_code = discount_code if discount_code

      bar_color = params['bar_color']
      @setting.bar_color = bar_color if bar_color

      text_color = params['text_color']
      @setting.text_color = text_color if text_color
      
      text_font_family = params['text_font_family']
      if text_font_family
        @setting.text_font_family_name = text_font_family
        font = @@font[text_font_family] 
        @setting.text_font_family = font if font
      end

      button_color = params['button_color']
      @setting.button_color = button_color if button_color

      button_hover_color = params['button_hover_color']
      @setting.button_hover_color = button_hover_color if button_hover_color

      button_text_color = params['button_text_color']
      @setting.button_text_color = button_text_color if button_text_color

      bar_text = params['bar_text']
      @setting.bar_text = bar_text if bar_text

      button_text = params['button_text']
      @setting.button_text = button_text if button_text

      targeted_time = params['targeted_time']
      @setting.targeted_time = targeted_time if targeted_time

      text_font_size = params['text_font_size']
      @setting.text_font_size = text_font_size + 'px' if text_font_size

      @setting.save!

      # erb :home
      flash[:notice] = "Changes saved."
      haml :home, :layout => :first_order_app
    end
  end

  get '/help' do
    erb :help, :layout => :help_layout
  end

  get '/readme' do
    erb :readme, :layout => :readme_layout
  end

  get '/proxy/' do
    if !enabled?
      halt 204
    end

    params = request.env['rack.request.query_hash']
    shopify_session do
      # do nothing.
    end

    content_type :'application/liquid'
    erb :'proxy.liquid', :layout => false
  end

  get '/load_first_order.js' do
    if !enabled?
      halt 204
    end

    @shop_name = params['shop']

    shop = Shop.find_by(name: @shop_name)
    @setting = shop.setting
    content_type :js
    # coffee :load_first_order
    erb :'first_order.js', :layout => false
  end

  def is_protected_from_csrf?
    return false
  end

  private

  def my_webhook_job(jobKlass, params)
    # return unless verify_shopify_webhook
    @shop_name = request.env['HTTP_X_SHOPIFY_SHOP_DOMAIN']
    shop = Shop.find_by(name: @shop_name)
    # params = ActiveSupport::JSON.decode(request.body.read.to_s)
    Resque.enqueue(jobKlass, shop.name, shop.token, params)
    status 200
  end

  def enabled?
    # beta ... so free for now.  Placeholder to change when I want to charge.
    return true
  end

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

      order_webhook = ShopifyAPI::Webhook.new(
        topic: 'orders/create',
        address: "#{base_url}/order",
        format: 'json'
      )

      begin
        uninstall_webhook.save!
      rescue => e
        raise unless uninstall_webhook.persisted?
      end

      begin
        order_webhook.save!
      rescue => e
        raise unless order_webhook.persisted?
      end

      # need to create tags
      load_script_tag = ShopifyAPI::ScriptTag.new(
        event: "onload", 
        src: "#{base_url}/load_first_order.js",
        display_scope: 'online_store'
      )
      begin
        puts "loading script ...."
        load_script_tag.save!
      rescue => e
        puts "loading script failed...."
        raise unless load_script_tag.persisted?
      end
    end
  end
end


