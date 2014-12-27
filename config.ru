require 'bundler'
Bundler.require(:default)

Dir.glob('./controllers/*.rb').each do |file|
  require file
  puts "required #{file}"
end

map('/'){ run ApplicationController }