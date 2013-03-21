ThamesCommute::Application.routes.draw do

  # removed until we get to bottom of why not working for boats/5/edit (ActiveRecord::RecordNotFound)
  # get '/boats/:id' => 'boats#show', :constraints => { :id => /\d+/ }
  # get '/boats/:slug' => 'boats#show', :constraints => { :slug => /(?!new).+/}
  resources :boats
  resources :passengers

  get '/help', :to => 'static_pages#help'
  get '/about', :to => 'static_pages#about'
  get '/contact', :to => 'static_pages#contact'

  # get '/login', :to => 'users#new'
  get '/registration', :to => 'users#new'

  root :to => 'static_pages#home'

end
