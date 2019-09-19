require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)
get '/' do
  guess = params['guess'].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}
end

def check_guess(guess)
  if guess > SECRET_NUMBER
    guess - 5 > SECRET_NUMBER ? message = "Way too high!" : message = "Too high!"
  elsif guess < SECRET_NUMBER
    guess + 5 < SECRET_NUMBER ? message = "Way too low!" : message = "Too low!"
  elsif guess == SECRET_NUMBER
    message = "You got it right!"
  end
  message
end