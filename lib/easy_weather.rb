# frozen_string_literal: true

require_relative "easy_weather/version"
require_relative 'easy_weather/weather'
require 'httparty'

module EasyWeather
  obj = Weather.new("Durango, Mex")
  p "Data of Durango, Mex"
  p obj.data
  p "Forecast:"
  p obj.forecast
  p "Astronomy data"
  p obj.astronomy_data
  p "Temperature"
  p obj.temperature
  p "Wind"
  p obj.wind
  p "Atmosphere data"
  p obj.atmosphere_data

end
