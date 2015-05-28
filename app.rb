require('sinatra')
require('sinatra/reloader')
require('./lib/rps')
also_reload('lib/**/*.rb')
# require "sinatra/twitter-bootstrap"


get('/') do
  erb(:index)
end

get('/results') do
  one = params.fetch('player_one')
  two = params.fetch("player_two")
  @result = one.beats?(two)
  erb(:results)
end
