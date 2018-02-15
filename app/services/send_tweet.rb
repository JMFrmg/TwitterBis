
require 'twitter'

class SendTweet
	def initialize(tweet_text)
		@tweet_text = tweet_text
	end

	def connexion

	@client = Twitter::REST::Client.new do |config|
  		config.consumer_key        = ENV['consumer_key']
  		config.consumer_secret     = ENV['consumer_secret']
  		config.access_token        = ENV['access_token']
  		config.access_token_secret = ENV['access_token_secret']

	end
	p @client
	end

	def send_tweet
		@client.update(@tweet_text)
	end

end
