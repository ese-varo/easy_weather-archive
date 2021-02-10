require 'json'

class Weather
  attr_accessor :data, :forecast

  def initialize(city)
    @data = self.get_general_data(city) 
    @forecast = self.get_forecast_data(5, city)
  end

  def astronomy_data
    { sunrise: @data["sys"]["sunrise"],
      sunset: @data["sys"]["sunset"] 
    }
  end
  
  def temperature
    @data["main"]["temp"]
  end

  def wind
    @data["wind"]["speed"]
  end 

  def atmosphere_data
    { humidity: @data["main"]["humidity"],
      pressure: @data["main"]["pressure"],
      visibility: @data["visibility"]
    }
  end

  private

  def get_general_data(city)
    response =
    HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}
                 &units=metric&APPID=c6bf473820a2063f3818541ed6847aa8")

    JSON.parse(response.body)
  end

  def get_forecast_data(days, city)
    response =
    HTTParty.get("https://api.openweathermap.org/data/2.5/forecast?q=#{city}
                  &units=metric&cnt=#{days}&appid=c6bf473820a2063f3818541ed6847aa8")
  
    JSON.parse(response.body)
  end
end
