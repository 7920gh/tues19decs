Rails.application.routes.draw do
  resources :line_items
  resources :carts

 # get 'store/index'
 #  get 'store'
 #root "adverts#new", as: 'new'
   #root 'adverts#index', as: 'index'
   root 'searchs#index', as: 'searchs_index'
  resources :events
  resources :tickets
  resources :p_products
  resources :products
  get 'say/hello'
  get 'say/goodbye'
  resources :tues19decs
 # resources :ads
 resources :adds
 #resources :search 
 resources :searchs
 
 #get 'search', to: 'search#index'
  # get 'searchs/index', as: 'searchs'
 # get 'search/index'
 
 #patch 'adverts/:id', to: 'adverts#update'
 post 'adverts/:id/edit', to: 'adverts#update', as: 'update'
 get 'adverts/:id/edit', to: 'adverts#edit', as: 'edit'
 get 'adverts/:id/delete', to: 'adverts#delete', as: 'delete'
 #get 'adverts/show', to: 'adverts#show', as: 'show' 
  get 'adverts/new', to: 'adverts#new_advert', as: 'new'
 get 'adverts/:id', to: 'adverts#show', as: 'show', id: /\d+/



 post 'adverts', to: 'adverts#create'
 get 'adverts/', to: 'adverts#index', as: 'list'
 
 #get 'adverts/new', to: 'adverts#new_advert', as: 'new'
 #get 'adverts/show', to: 'adverts#show', as: 'show'
 
 # get 'adverts', to: 'adverts#index', as: 'index'
 
 
 #get 'adds/create', to: 'adds#create', as: 'show'
 #get 'adds/new', to: 'adds#new', as: 'new'
 # get 'adds/:id', to: 'adds#show', as: 'show'
 #get 'adds/', to: 'adds#index', as: 'index'

  
 
 
 get 'ads/:id', to: 'ads#show'
 get 'ads' , to: 'ads#index' 
  
 # get '/ads/:id/edit', :controller=>'ads', :action=>'edit'  
# get '/ads/:id', :controller=>'ads', :action=>'show'  
#get 'ads', :controller=>'ads', :action=>'show'
 

#get '/ads/:id', :controller=>'ads', :action=>'show'
#get '/ads/',:controller=>'ads',:action=>'show'
#get 'ads/show'
#get 'adds', :controller=>'adds', :action=>'show'
#get 'adds/:id', :controller=>'adds', :action=>'show'


#get "adds", as: "something#viral" => "adds"
get '/', to: proc { [200, {}, ['']] }

#root "application#hello"
#root 'tues19decs#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
