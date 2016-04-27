class WelcomeController < ApplicationController
  require "json"

  def show
    nasa_api = "https://api.nasa.gov/planetary/apod?api_key=NNKOjkoul8n1CH18TWA9gwngW1s1SmjESPjNoUFo"
    raw_data = Faraday.get(nasa_api)
    @apod = JSON.parse(raw_data.body)
    @image = @apod["hdurl"]
  end

end
