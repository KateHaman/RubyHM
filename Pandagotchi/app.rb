require 'sinatra'
require 'erb'
require_relative './panda'

use Rack::Auth::Basic, 'Restricted Area' do |username, password|
  username == 'panda' and password == 'panda'
end

helpers do
  def panda
    Panda.value
  end
end

class Panda
  @@panda = nil
  def self.value
    @@panda
  end

  def self.set(panda)
    @@panda = panda
  end
end

get '/' do
  @name = params['name']
  erb :form
end

get '/start' do
  @name = params['name']
  Panda.set(Panda.new(@name))
  erb :start
end

get '/info' do
  @name = params['name']
  erb :info
end

get '/feed' do
  panda.feed
  if panda.hp <= 0 || panda.thirsty <= 0
    redirect 'death'
  elsif panda.full == 100
    redirect 'success'
  else
    redirect 'info'
  end
end

get '/drink' do
  panda.drink
  if panda.hp <= 0 || panda.happy <= 0
    redirect 'death'
  elsif panda.thirsty == 100
    redirect 'success'
  else
    redirect 'info'
  end
end

get '/sleep' do
  panda.sleep
  if panda.hp <= 0 || panda.clean <= 0
    redirect 'death'
  elsif panda.sleepy == 100
    redirect 'success'
  else
    redirect 'info'
  end
end

get '/wash' do
  panda.wash
  if panda.hp <= 0 || panda.full <= 0
    redirect 'death'
  elsif panda.clean == 100
    redirect 'success'
  else
    redirect 'info'
  end
end

get '/play' do
  panda.play
  if panda.hp <= 0 || panda.sleepy <= 0
    redirect 'death'
  elsif panda.happy == 100
    redirect 'success'
  else
    redirect 'info'
  end
end

get '/tidy_panda' do
  @name = params['name']
  erb :tidy
end

get '/comb' do
  panda.comb
  redirect 'info'
end

get '/hug' do
  panda.hug
  redirect 'info'
end

get '/clean_mouth' do
  @name = params['name']
  erb :clean
end

get '/brush' do
  panda.brush
  redirect 'info'
end

get '/death' do
  @name = params['name']
  erb :death
end

get '/success' do
  erb :success
end
