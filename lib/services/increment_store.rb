# sort out the require
require 'sinatra/shopify-sinatra-app'
require 'sinatra/redis'
require 'sinatra/activerecord'
require 'redis-namespace'

class IncrementStore

  def initialize(store_name, event_id, timestamp)
    @store_name = store_name
    @event_id = event_id
    @timestamp = timestamp
  end

  def call()
    # check whether the event is a duplicate
    puts "inside IncrementStore " + @store_name + " event: "+ @event_id 

    # get redis connection with namespace
    redis_url = ENV['REDISCLOUD_URL'] || 'redis://localhost:6379/'
    redis_uri = URI.parse(redis_url)
    redis_connection = ::Redis.new(host: redis_uri.host,
                                   port: redis_uri.port,
                                   password: redis_uri.password)
    namespaced_redis = Redis::Namespace.new(:shopify, :redis => redis_connection)

    something = namespaced_redis.get(@event_id)

    if something.nil?
      namespaced_redis.set(@event_id, true)
      namespaced_redis.expire(@event_id, 600) # seconds = 10 minutes.

      # if it is not, increase the store 
      shop = Shop.find_by(name: @store_name)
      if shop
        shop.increaseCount 
      else
        puts "Cannot find shop " + @store_name
      end

      puts "event is new .. increaseCount"
    else
      puts "event_id " + @event_id + "is not new"
    end

    
  end

end
