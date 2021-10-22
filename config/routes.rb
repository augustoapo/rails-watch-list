Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "lists", to: 'lists#index'

  #  # CREATE
  # get "lists/new", to: 'lists#new', as: 'new_list'
  # post "lists", to: 'lists#create'
 
  #  # SHOW
  # get "lists/:id", to: 'lists#show', as: 'list'
 
  # root to: 'lists#index'
  #  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: [:update, :destroy, :edit] do
    resources :bookmarks, except: [:update, :index, :show, :edit]
  end  
end
