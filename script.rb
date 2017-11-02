if ENV['ACTIVATE_BEFORE_SETUP'] == 'true'
  puts "Before bundler/setup"
  puts Gem.activate_bin_path('bundler', 'bundle', '>= 0.a')
end

require 'bundler/setup'

spec = p(Gem.send(:find_spec_for_exe, 'bundler', 'bundle', ['=> 0.a']))
puts spec.bin_file('bundle')

puts "After bundler/setup"
puts Gem.activate_bin_path('bundler', 'bundle', '>= 0.a')

fail unless system("bundle exec ruby -e 'puts 123'")
