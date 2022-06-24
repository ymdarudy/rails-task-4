Rails.application.routes.draw do
  root "rental_properties#index"

  resources :rental_properties do
    resources :nearest_stations
  end
end
