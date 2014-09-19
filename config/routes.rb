Rails.application.routes.draw do
  resources :users, only: :index do
    collection do
      get :autocomplete
      get :search
    end
  end

  root 'users#index'
end
