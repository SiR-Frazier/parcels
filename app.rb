require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  @description = "This application will determine the shipping price of a package based on user input"
  erb(:input)
end

get('/output') do
  @width = params.fetch("width").to_i
  @length = params.fetch("length").to_i
  @height = params.fetch("height").to_i
  @weight = params.fetch("weight").to_i
  @speed = params.fetch("speed").to_i
  @distance = params.fetch("distance").to_i
  parcel = Parcel.new(@width, @length, @height, @weight, @speed, @distance)
  @string_to_display = parcel.cost_to_ship
  erb(:output)
end
