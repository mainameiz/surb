require 'surb/version'
require 'rake'

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

module Surb
end
