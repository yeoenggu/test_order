if Gem::Specification.find_all_by_name('dotenv').any?
  require 'dotenv'
  Dotenv.load
end


require 'tilt/erb'
require './lib/app'
require 'tilt/liquid'

SinatraApp.run!
