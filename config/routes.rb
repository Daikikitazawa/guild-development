Rails.application.routes.draw do


  get "chat/index" => "chat#index"

  get "offer/index" => "offer#index"

  get "quest/index" => "quest#index"
  get "quest/new" => "quest#new"

  get "quest/:id" => "quest#show"


  get "/" => "home#top"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
