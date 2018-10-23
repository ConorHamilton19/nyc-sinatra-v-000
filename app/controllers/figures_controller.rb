class FiguresController < ApplicationController
  
  get '/figures' do 
    @figure = Figure.all
    erb :"/figures/index"
  end
  
  get '/figures/new' do 
    erb :"/figures/new"
  end 
  
  post '/figures'
    @figure = Figure.create(params[:figure])
    if !params["title"]["name"].empty?
      @figure.title << Title.create(params[])
  
  end 
end
