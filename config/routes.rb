Rails.application.routes.draw do
  scope :admin do
    scope module: :backend do

    end
  end

  scope module: :frontend do
    root "application#index"

    resources :users, only: [:new, :create]
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end
end
