Rails.application.routes.draw do
  resources :users, only: :index do
    get :autocomplete
    get :search
  end

  root 'users#index'
end
