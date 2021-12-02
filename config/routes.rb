Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"
  resources :articles do 
    resources :comments
  end  
  devise_for :articles, :comments, :users, controllers: {
    sessions: 'users/sessions'
  }
end