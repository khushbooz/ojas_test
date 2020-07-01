Rails.application.routes.draw do
  resources :clients
  # resources :phones 
  match '/phones', to: 'phones#allot_number', via: 'post'
  match '/phones', to: 'phones#allotted_numbers', via: 'get'
  match '/phones/:id', to: 'phones#allot_fancy_number', via: 'post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
