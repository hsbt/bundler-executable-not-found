if ENV['ACTIVATE_BEFORE_SETUP'] == 'true'
  puts "Before bundler/setup"
  puts Gem.activate_bin_path('bundler', 'bundle', '>= 0.a')
end

require 'rubygems'
require 'bundler/setup'

puts "After bundler/setup"
puts Gem.activate_bin_path('bundler', 'bundle', '>= 0.a')

system "bundle exec ruby -e 'puts 123'"
