Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :urls, only: [:index, :create]
  get '/url/:key', to: 'urls#show', as: 'url'
end
