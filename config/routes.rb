Rails.application.routes.draw do
  root 'main#index'
  get 'main/today_birthday'
  get 'main/wish_birthday'
  post 'main/viewall'
  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
