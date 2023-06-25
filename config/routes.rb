Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # TopicsController
  get 'topics/new', to: 'posts#new', as: 'new_post'
  get 'topics/edit', to: 'posts#edit', as: 'new_post' 
  
end