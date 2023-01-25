# Fetch the world of Harry Potter
import requests
# Get All Characters of Harry Potter
api = "http://hp-api.herokuapp.com/api/characters"
# Fetch All Students of Hogwarts
api = "http://hp-api.herokuapp.com/api/characters/students"
# Fetch ALl Stuff and Teachers of Harry Potter
api = "http://hp-api.herokuapp.com/api/characters/staff"
# Fetch ALL Gryffindor Characters
api = "http://hp-api.herokuapp.com/api/characters/house/gryffindor"
# Fetch ALL Slytherin Characters
api = "http://hp-api.herokuapp.com/api/characters/house/slytherin"
# Fetch ALL Hufflepuff Characters
api = "http://hp-api.herokuapp.com/api/characters/house/hufflepuff"
# Fetch ALL Ravenclaw Characters
api = "http://hp-api.herokuapp.com/api/characters/house/ravenclaw"
response = requests.get(api_url)
print(response.json())