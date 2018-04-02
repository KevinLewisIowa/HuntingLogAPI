Rails.application.routes.draw do
  
  resources :locations
  resources :hunt_duck_counts
  resources :ducks
  resources :hunt_partners
  resources :partners
  post    'login'   => 'users#login'
  get     'getDucksForHunt' => 'hunt_duck_counts#getDucksForHunt'
  get     'partnersForHunt' => 'hunt_partners#partnersForHunt'
  get     'huntsForUser' => 'hunts#huntsForUser'
  resources :hunts
  resources :users
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
