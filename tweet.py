import sys
import tweepy

auth = tweepy.OAuthHandler("CONSUMER_KEY", "CONSUMER_KEY_SECRET")
auth.set_access_token("TOKEN", "TOKEN_SECRET")

api = tweepy.API(auth)

print("\nsys.argv:\n", sys.argv, "\n")

#img = str(sys.argv[1])
imagem = api.media_upload(str(sys.argv[1]))
tweet = str(sys.argv[2]).replace('\\n', '\n')

if img == "null":
    api.update_status(status =(tweet))

elif tweet == "null":
    api.update_status(media_ids=[imagem.media_id])

else:
    api.update_status(status =(tweet), media_ids=[imagem.media_id])

print ("\nTá tuítado 😎️👍️")
