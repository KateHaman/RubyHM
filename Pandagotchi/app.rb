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
  redirect 'info'
end

get '/drink' do
  panda.drink
  redirect 'info'
end

get '/sleep' do
  panda.sleep
  redirect 'info'
end

get '/wash' do
  panda.wash
  redirect 'info'
end

get '/play' do
  panda.play
  redirect 'info'
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
