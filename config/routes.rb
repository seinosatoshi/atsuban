Rails.application.routes.draw do
  # resources :subscribes, only: [:index]

  devise_for :bands, controllers: {
    sessions: 'bands/sessions',
    passwords: 'bands/passwords',
    registrations: 'bands/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  resources :bands, only: %i[index show edit new update] do
    resources :comments, only: %i[create destroy]
    resource :subscribes, only: %i[create destroy]
    resources :yells, only: %i[create destroy]
    resources :audios, only: %i[create destroy]
    resources :posts, only: %i[show create destroy]
  end
  resources :users, only: %i[show edit index update]

  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'

end
