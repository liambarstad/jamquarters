Rails.application.routes.draw do
    root 'main#index'
    
    put '/session', to: 'session#update'
    resources :session, only: [:create]
end
