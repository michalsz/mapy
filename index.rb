# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'
require 'erb'

require 'models/location.rb'

get '/' do
  @title = 'Moje wyjazdy'
  erb :index
end

get '/firmy' do
  @title = 'Firmy'
  erb :firmy
end

get '/zdjecia' do
  @title = 'Zdjęcia'
  @locations = Location.all()
  erb :zdjecia
end


get '/mapa' do
  @title = 'Mapa wyjazdów'
  @locations = Location.all()
  erb :mapa
end

