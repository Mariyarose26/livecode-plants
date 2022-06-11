Rails.application.routes.draw do
  # root to: "gardens#index"
  
  # http://localhost:3000/gardens/7/plants/new
  resources :gardens do
    resources :plants, only: [:new, :create]
  end
 
  resources :plants, only: :destroy do
    resources :plant_tags, only: [:new, :create]
  end
end
