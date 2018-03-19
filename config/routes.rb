Rails.application.routes.draw do
  #resources :comments
  resources :entries do
    resources :comments
  end
  devise_for :admins
  resources :admins do
    resources :entries
  end
  # Editar noticias
  patch '/admins/:admin_id/entries/:id(.:format)/edit', to: 'entries#update'
  #Eliminar noticias
  delete '/admins/:admin_id/entries/:id(.:format)', to: 'entries#destroy'
  root to: "entries#index"
  # Creación de noticias
  #get 'entries/new_entry', to: 'entries#new', :as => :new_entry
  post '/entry_form', to: 'entries#create'
  get '/entry_form', to: 'entries#new', :as => :admin_create_entry
  # Mostrar todas las noticias
  get 'entries', to: 'entries#index'
  # Mostrar una noticias
  get 'entries/:id(.:format)', to: 'entries#show', :as => :show_entry
  # Crear comentarios
  post '/entries/:entry_id/comments(.:format)', to: 'comments#create', :as => :new_entry_comment_post2
  post '/entries/:entry_id/', to: 'comments#create', :as => :new_entry_comment_post
  post '/comments/new', to: 'comments#create'
end
