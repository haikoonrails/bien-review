Rails.application.routes.draw do

#--- ---
  resources :reviews do
    resources :comments
    resource :bookmark
  end

  root "reviews#index"

#--- ---

#--- ---
  resources :users

#--- ---


#--- ---
  # remove plural "s"
  resource :session
#--- ---

end
