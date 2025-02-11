Rails.application.routes.draw do
  resources :artists, only: [:show] do 
    resources :songs, only: [:index, :show]
  end

  resources :songs, :artists, only: [:show, :index, :new, :create, :edit, :update]
  
end
