Rails.application.routes.draw do
  get 'doses/destroy'
  get 'doses/create'
  get 'doses/new'
  get 'cocktails/destroy'
  get 'cocktails/create'
  get 'cocktails/new'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/create'
  get 'cocktails/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :create, :index, :show]
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]# RestaurantsController#top
  end
  resources :doses, only: [:destroy]
end
