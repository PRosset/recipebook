Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home'

  resources :recipes do
    resources :notes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
