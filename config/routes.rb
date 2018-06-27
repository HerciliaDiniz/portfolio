Rails.application.routes.draw do

  devise_for :users
  resources :portfolio_pages, except: [:show]
  get 'angular', to: 'portfolio_pages#angular'
  get 'rails', to: 'portfolio_pages#rails'
  get 'portfolio/:id', to: 'portfolio_pages#show', as: 'portfolio_show'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

end
