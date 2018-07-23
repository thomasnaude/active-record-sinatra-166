require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.order(rating: :desc).first(10)
  erb :index
end

post "/restaurants" do
  Restaurant.create(params)
  redirect "/"
end

get "/restaurants/new" do
  erb :new
end

get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end


