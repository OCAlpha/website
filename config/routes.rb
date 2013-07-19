Fullrun::Application.routes.draw do
  
  resources :prayer_notes


  resources :prayer_followups


  resources :prayers


  resources :bios


  resources :bios
  resources :offices
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :purchases, :constraints => { :subdomain => 'treasury'}
  resources :payment_types, :constraints => { :subdomain => 'treasury'}
  resources :account_transfers, :constraints => {:subdomain => 'treasury'}
  resources :transfers, :constraints => {:subdomain => 'treasury'} 
  resources :payments, :constraints => {:subdomain => 'treasury'}
  resources :charge_types, :constraints => {:subdomain => 'treasury'}
  resources :charges, :constraints => {:subdomain => 'treasury'}
  resources :purchases, :constraints => {:subdomain => 'treasury'}
  
  #Treasury Subdomain
  constraints :subdomain => 'treasury' do
    match '/', to: 'offices#index'
    match '/newcharge', to: 'charges#new'
    match '/newpayment', to: 'payments#new'
    match '/newtransfer', to: 'transfers#new'
    match '/clubpurchase', to: 'purchases#new'
    match '/budgets', to: 'offices#index'
  end
  #Rush Subdomain
  constraints :subdomain => 'rush' do
    match '/', to: 'static_pages#rush'
  end
  #Calendar Subdoman
  constraints :subdomain => 'calendar' do
    match '/', to: 'static_pages#calendar'
  end
  #Subdomainless Routes
  
  constraints :subdomain => nil do
    match '/calendar', to: 'static_pages#calendar'
    match '/directory', to: 'users#index'
    match '/officers', to: 'offices#index'
    match '/signup', to: 'users#new'
    match '/signin', to: 'sessions#new'
    match '/signout', to: 'sessions#destroy', via: :delete
  
    match '/constitution', to: 'static_pages#constitution'
    match '/contact', to: 'static_pages#contact'
    match '/help', to: 'static_pages#help'
    match '/about', to: 'static_pages#about'
  end
  root to: 'static_pages#home'
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
