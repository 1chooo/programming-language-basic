# Get your API: https://developers.google.com/youtube/v3
# pip install simple-youtube-api
from simple_youtube_api.Channel import *
from simple_youtube_api.LocalVideo import *
from simple_youtube_api.YouTube import *
# Upload Video
ch = Channel()
ch.login("client.json", "credentials.storage")
myvid = LocalVideo("test.mp4")
myvid.set_title("Test Video")
myvid.set_description("This is a test video")
myvid.set_category("Education")
myvid.set_tags(["test", "python"])
myvid.set_privacy_status("public")
myvid.set_default_language("en")
myvid.set_playlist("Uploads")
vid = ch.upload_video(myvid)
print(vid.id)
# Search and Fetch Videos
yt = YouTube()
yt.login()
# search video by name
vid = yt.search("Python")
for v in vid:
    print(v.title, v.id)
# search video by id
vid = yt.search_by_video_id("video ID")
print(vid.fetch)
# Fetch Comments
print(vid.fetch_comment_threads())