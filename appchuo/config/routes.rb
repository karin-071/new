Rails.application.routes.draw do
  resources :posts
  resources :faculties
  # get 'accounts/show'
  devise_for :users
  root to: "home#index"
  resources :users do
    # 検索用
    collection do
      get 'search'=> "users#search"
    end
    # 検索用
  end
  resource :account, only: [:show]
  
end