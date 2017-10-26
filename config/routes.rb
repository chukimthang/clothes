Rails.application.routes.draw do
  root "static_pages#home"

  namespace :admin do
    root "dash_board#index", as: :home
  end
end
