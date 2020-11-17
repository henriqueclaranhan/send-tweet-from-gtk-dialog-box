import sys
import tweepy

auth = tweepy.OAuthHandler("CONSUMER_KEY", "CONSUMER_KEY_SECRET")
auth.set_access_token("TOKEN", "TOKEN_SECRET")

api = tweepy.API(auth)

tweet = str(sys.argv[1])
api.update_status(status =(tweet))
print ("\nTá tuítado 😎️👍️")
