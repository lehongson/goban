Rails.application.routes.draw do

  resources :hotels
  # devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admin_users, path: "admin/", controllers: {
    sessions: "admin/sessions",
  }

  namespace :admin do
    root "home#index"
  	resources :hotels
  end

end
