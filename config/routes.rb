Rails.application.routes.draw do
  
  root 'tweets#home'

  post 'tweets/send_tweet'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end