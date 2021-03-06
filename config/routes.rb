Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  get 'comments/new'

  get "main" => 'main#index'

  get "signup" => 'users#new'

  post "signup" => 'users#create'

  get "login" => 'sessions#new'

  post "login" => 'sessions#create'

  delete "logout" => 'sessions#destroy'


  get 'posts' => 'posts#new'

  post 'postsnew' => 'post#create'

  delete "posts" => 'posts#destroy'

  get 'posts/edit'

  get 'posts/show'

  get 'welcome/index'

  root 'welcome#index'

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
