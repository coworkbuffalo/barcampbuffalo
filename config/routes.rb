Barcamp::Application.routes.draw do
  resources :registrations

  root :to => 'high_voltage/pages#show', :id => 'home'
end
