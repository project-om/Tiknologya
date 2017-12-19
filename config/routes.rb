Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts

  get 'index' => 'welcome#index'

  get 'about' => 'welcome#about'

  get ':username' => 'posts#user_posts', as: 'user_posts' #params[:username] => 'sanch'
  root 'posts#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
