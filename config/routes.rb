Rails.application.routes.draw do


  get "chat/index" => "chat#index"

  get "offer/index" => "offer#index"

  get "quests/index" => "quests#index"
  get "quests/new" => "quests#new"

  get "quests/:id" => "quests#show"


  get "/" => "home#top"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
