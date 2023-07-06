Rails.application.routes.draw do
  devise_for :people
# PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  get 'posts/index', to: 'posts#index', as: 'index_post'
  # TopicController
  get 'topics/new', to: 'topics#new', as: 'new_topic'
  get 'topics/edit', to: 'topics#edit', as: 'edit_topic'
end