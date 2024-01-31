Rails.application.routes.draw do
 # get 'store/index'
 #  get 'store'
   root 'store#index', as: 'store_index'
  resources :events
  resources :tickets
  resources :p_products
  resources :products
  get 'say/hello'
  get 'say/goodbye'
  resources :tues19decs
 # resources :ads
# resources :adds
 
 get 'adds/new', to: 'adds#new', as: 'new'
 get 'adds/', to: 'adds#index', as: 'index'
 get 'adds/:id', to: 'adds#show', as: 'show'
  
 
 
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
