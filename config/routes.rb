Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/contacts/new' => 'contacts#new'
  get '/contacts/create' => 'contacts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
