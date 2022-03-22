Rails.application.routes.draw do
  devise_for :customers
  namespace :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    resources :items, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
