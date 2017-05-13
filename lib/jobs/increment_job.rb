require 'sinatra/shopify-sinatra-app'
require './lib/services/increment_store'

class IncrementJob
  @queue = :shopify

  def self.perform(store_id, event_id, timestamp)
    IncrementStore.new(store_id, event_id, timestamp).call()
  end
end
