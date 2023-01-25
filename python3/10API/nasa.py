# Get Your Api: https://api.nasa.gov/
# pip install nasapy
import requests
import nasapy
api_key = "Your Api Key"
nasa = nasapy.Nasa(key = api_key)
# Get Astronomy Picture of the Day
pic = nasa.picture_of_the_day()
print(pic)
# Get Mars Weather
mars = nasa.mars_weather()
print(mars)
# Search for Images and Audio from nasa
search = nasa.media_search(query="satellite", media_type="image")
print(search)