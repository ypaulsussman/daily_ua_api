Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "headlines#all_dates"
  
  get "/scrape", to: 'headlines#scrape'

  resources :headlines, only: [:index]
  
end
