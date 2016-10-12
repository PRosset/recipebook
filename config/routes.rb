Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home' 

  resources :recipes do
    resources :notes
  end

  get 'yummly/keyword/:keyword', to: 'yummly#keyword'
  get 'yummly/id/:id', to: 'yummly#id'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
