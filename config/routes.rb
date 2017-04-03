Rails.application.routes.draw do
  root 'pages#home'

  get 'about' => 'pages#about'

  resources :questions, only: [:index, :show]
end
