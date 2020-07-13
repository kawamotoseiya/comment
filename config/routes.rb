Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'menu_images#index'
  resources :menu_images do
  	resources :menu_comments, only: [:create, :destroy]
  end
end
