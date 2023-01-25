# Get Your API: https://www.gingersoftware.com
# pip install cloudscraper
import cloudscraper
url = "https://services.gingersoftware.com/Ginger/correct/jsonSecured/GingerTheTextFull"
apikey = "your_api"
text = "Smell of fliwers"
session = cloudscraper.create_scraper()
param = {
    "text": text,
    "apikey": apikey,
    "lang": "US",
    "clientVersion": "2.0"
}
request = session.get(url, params=param, verify=True)
data = request.json()
correct = data["Corrections"]