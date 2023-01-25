# Get your FREE API : https://developer.edamam.com/
# pip install py_edamam
from py_edamam import Edamam
recipe = Edamam( 
    recipes_appid="Your App ID",
    recipes_appkey="Your API Key",
)
# Search for recipes
recipes = recipe.search_recipe("Pineapple Cake")
print(recipes)
# Get Recipe and Nutritions
for r in recipes:
    print(r)
    print(r.calories)
    print(r.cautions)
    print(r.dietLabels)
    print(r.healthLabels)
    print(r.ingredients_quantities)