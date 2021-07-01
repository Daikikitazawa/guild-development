Rails.application.routes.draw do


  get "chats/index" => "chats#index"

  get "offers/index" => "offers#index"

  get "quests/index" => "quests#index"
  get "quests/new" => "quests#new"
  post "quests/create" => "quests#create"

  get "quests/:id" => "quests#show"


  get "/" => "home#top"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
