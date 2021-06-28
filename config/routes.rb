Rails.application.routes.draw do
  get 'chat/index'
  get 'offer/index'
  get 'quest/index'
  get "/" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
