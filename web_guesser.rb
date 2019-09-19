require 'sinatra'
require 'sinatra/reloader'
require_relative 'guesser.rb'

guesser = Guesser.new

get '/' do
  guess = params['guess'].to_i
  cheat = params['cheat']
  message = guesser.check_guess(guess)
  erb :index, :locals => { :number => guesser.number, :message => message, :cheat => cheat, :guesses => guesser.guesses }
end