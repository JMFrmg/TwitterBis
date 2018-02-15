
require 'twitter'

class SendTweet
	def initialize(tweet_text)
		@tweet_text = tweet_text
	end

	def connexion
	Dotenv.load
	@client = Twitter::REST::Client.new do |config|
  		config.consumer_key        = ENV['API_KEY']
  		config.consumer_secret     = ENV['API_SECRET']
  		config.access_token        = ENV['ACCESS_TOCKEN']
  		config.access_token_secret = ENV['ACCESS_TOCKEN_SECRET']

	end
	p @client
	end

	def send_tweet
		@client.update(@tweet_text)
	end

end
