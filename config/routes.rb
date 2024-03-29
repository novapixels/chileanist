Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'quiz', to: 'pages#quiz'

  resources :expressions, only: [:index, :show]
  resources :quizzes, only: [:index, :new, :create, :show] do
    resources :score, only: [:index, :new, :show]
  end
end
