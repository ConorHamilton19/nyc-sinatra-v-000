class FiguresController < ApplicationController
  
  get '/figures' do 
    @figures = Figure.all
    erb :"/figures/index"
  end
  
  get '/figures/new' do 
    erb :"/figures/new"
  end 
  
  post '/figures' do
    @figure = Figure.create(params[:figure])
    if !params["title"]["name"].empty?
      @figure.title << Title.create(params["title"]["name"])
    end 
    if !params["landmark"]["name"].empty?
      @figure.landmark << Landmark.create(params["landmark"]["name"])
    end 
    @figure.save
    
    redirect :"/figures/#{@figure.id}"
  
  end 
end
