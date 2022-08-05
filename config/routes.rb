Rails.application.routes.draw do

#--- ---
  resources :reviews do
    resources :comments
  end

  root "reviews#index"

#--- ---

#--- ---
  resources :users

#--- ---


#--- ---
  resources :sessions
#--- ---

end
