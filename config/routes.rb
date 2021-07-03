Rails.application.routes.draw do

  get "users/index" => "users#index"
  get "signup" => "users#new"
  post "users/create" => "users#create"

  get "users/:id" => "users#show"


  get "chats/index" => "chats#index"

  get "offers/index" => "offers#index"

  get "quests/index" => "quests#index"
  get "quests/new" => "quests#new"
  post "quests/create" => "quests#create"
  get "quests/:id/edit" => "quests#edit"
  post "quests/:id/update" => "quests#update"
  post "quests/:id/destroy" => "quests#destroy"

  get "quests/:id" => "quests#show"


  get "/" => "home#top"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
