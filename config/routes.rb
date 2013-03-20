ThamesCommute::Application.routes.draw do

  # match '/boats/:id' => 'boats#show', :constraints => { :id => /\d+/ }
  # match '/boats/:slug' => 'boats#show', :except => [:new, :create, :edit, :update]
  resources :boats

  match '/help', :to => 'static_pages#help'
  match '/about', :to => 'static_pages#about'
  match '/contact', :to => 'static_pages#contact'

  root :to => 'static_pages#home'

end
