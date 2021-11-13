Rails.application.routes.draw do
  resources :heroes, only: %i[index]
end
