Rails.application.routes.draw do
  resources :employees
  resources :offices
  root "employees#index"
end
