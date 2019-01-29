require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/:p1' do
  game = Game.new(params[:p1])
  @game = game.play()
  erb(:result)
end
