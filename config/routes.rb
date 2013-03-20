ThamesCommute::Application.routes.draw do

  get '/boats/:id' => 'boats#show', :constraints => { :id => /\d+/ }
  get '/boats/:slug' => 'boats#show', :constraints => { :slug => /(?!new).+/}
  resources :boats    

  get '/help', :to => 'static_pages#help'
  get '/about', :to => 'static_pages#about'
  get '/contact', :to => 'static_pages#contact'

  root :to => 'static_pages#home'

end
