Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "messages#index"

  namespace :api do
    resources :messages, only: :create
  end

  resources :messages
  resources :message_templates

end
