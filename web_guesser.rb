require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/:name' do |n|
  "Hello #{n}!"
end