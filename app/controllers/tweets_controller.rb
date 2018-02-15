class TweetsController < ApplicationController
  def home
  	@tweet = ''
  end

  def send_tweet
  	@tweet = Tweet.new(tweet_params)
  	@tweet = @tweet.content
  	send_tweet = SendTweet.new(@tweet)
   	send_tweet.connexion
  	send_tweet.send_tweet
    flash[:notice] = "Votre tweet a été envoyé!"
    redirect_to root_path
  	
  end

  private #on ne récupère de la view que les données qui nous intéressent (anonyme_user et content) - placé ici dans le script par convention
    def tweet_params
      params.permit(:content)
    end
end
