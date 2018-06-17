require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @array = []
    @phrase = params[:phrase].gsub("%20"," ")
    i = 0
    while i < params[:number].to_i do
      @array << @phrase
      i +=1
    end
    "#{@array}"
  end

end
