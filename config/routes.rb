Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/real_states/list', to: 'real_states#index'
  post '/real_states/add', to: 'real_states#create'
  get '/real_states/:id', to: 'real_states#show'
  get '/real_states/remove/:id', to: 'real_states#destroy'
  put '/real_states/:id/update', to: 'real_states#update'
  resources :real_states
end
