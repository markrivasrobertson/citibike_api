Rails.application.routes.draw do
  namespace :days do
    resources :days
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
