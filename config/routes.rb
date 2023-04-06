Rails.application.routes.draw do
  root to: 'hones#top'
  devise_for :users

  resources :postimages, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'homes/about' => 'homes#about', as: 'about'
end
