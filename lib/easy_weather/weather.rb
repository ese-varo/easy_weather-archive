require 'json'
require 'httparty'

class Weather
  BASE_URL = "https://api.openweathermap.org/data/2.5/" 
  attr_accessor :data, :forecast
  
  def initialize(city)
    @data = get_general_data(city) 
    @forecast = get_forecast_data(5, city)
  end
  
  def forecast_data
    forecast["list"].each_with_index do |day, index|
      puts "Day #{index + 1}\n"
      puts "Temperature: #{day["main"]["temp"]} centigrades\n"
      puts "Weather: #{day["weather"][0]["description"]}\n"
    end
    "Take your precautions for the  week!"
  end

  def astronomy_data
    data_hash =
    { sunrise: data["sys"]["sunrise"],
      sunset: data["sys"]["sunset"] 
    }
    "Sunrice: #{data_hash[:sunrise]} UTC, sunset: #{data_hash[:sunset]} UTC"
  end
  
  def temperature
    "#{data["main"]["temp"]} centigrades" 
  end

  def wind
    "#{data["wind"]["speed"]} meters/sec"
  end 

  def atmosphere_data
    data_hash =
      { humidity: data["main"]["humidity"],
        pressure: data["main"]["pressure"],
        visibility: data["visibility"]
      }
    "Humidy: #{data_hash[:humidity]}%, pressure: #{data_hash[:pressure]}hPa, visibility: #{data_hash[:visibility]} meters"
  end

  private

  def get_general_data(city)
    response =
    HTTParty.get("#{BASE_URL}weather?q=#{city}
                 &units=metric&APPID=#{ENV["EASY_WEATHER"]}")

    JSON.parse(response.body)
  end

  def get_forecast_data(days, city)
    response =
    HTTParty.get("#{BASE_URL}forecast?q=#{city}
                  &units=metric&cnt=#{days}&appid=#{ENV["EASY_WEATHER"]}")
  
    JSON.parse(response.body)
  end
end

