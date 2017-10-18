Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'mail#index'
  post '/mail/create', to: 'mail#create'

  root 'mail#index'
end
