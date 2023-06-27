Rails.application.routes.draw do
# PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'

  # TopicController
  get 'topics/new', to: 'topics#new', as: 'new_topic'
  get 'topics/edit', to: 'topics#edit', as: 'edit_topic'
  
end