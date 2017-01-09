Rails.application.routes.draw do
  resources :post_twos
  resources :guide_twos
  resources :tags
  resources :topics
  resources :samples
  resources :cereals
  resources :sodapops
  resources :categories
  resources :guides
  resources :blogs
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
