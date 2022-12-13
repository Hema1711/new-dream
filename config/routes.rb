Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'
   
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'

  #---------------------------------product--------------------------------------------------------
      get "/products/get_product", to: "products#index" , as: :index 
      get "/products/all_product", to: "products#product_index", as: :product_index
     get "products/new_product", to: "products#new_product"
     get "products/edit_product", to: "products#edit_product"
     put "products/update_product", to: "products#update_product"
     post "products/create_product", to: "products#create_product"
     delete "products/delete_product", to: "products#delete_product"
  
  #--------------------------------------User--------------------------------------------------------
     get "/users/get_user", to: "users#user_index", as: :user_index
     get "/users/new_user", to:  "users#new_user", as: :new_user
     get "/users/edit_user", to:  "users#edit_user", as: :edit_user
     put "/users/update_user", to:  "users#update_user",as: :update_user
     post "/users/create_user", to:  "users#create_user",as: :create_user
     delete "/users/delete_user", to:  "user#delete_user"
  
  #---------------------------------------cart----------------------------------------------------------
     get "/carts/get_cart", to: "carts#cart_index", as: :cart_index
     get "carts/new_cart", to:  "carts#new_cart"
     get "carts/edit_cart", to:  "carts#edit_cart"
     put "carts/update_cart", to:  "carts#update_cart"
     post "carts/create_cart", to:  "carts#create_cart"
     delete "carts/delete_cart", to:  "carts#delete_cart"

   #---------------------------------------order----------------------------------------------------------

   get "orders/get_order", to: "orders#get_order"
   get "orders/new_order", to:  "orders#new_order"
   get "orders/edit_order", to:  "orders#edit_order"
   put "orders/update_order", to:  "orders#update_order"
   post "/orders/create_order", to:  "orders#create_order"
   delete "orders/delete_order", to:  "orders#delete_order"

   #---------------------------------------payment----------------------------------------------------------

   get "payments/get_payment", to: "payments#get_payment"
   get "payments/new_payment", to:  "payments#new_payment"
   get "payments/edit_payment", to:  "payments#edit_payment"
   put "payments/update_payment", to:  "payments#update_payment"
   post "payments/create_payment", to:  "payments#create_payment"
   delete "payments/delete_payment", to:  "payments#delete_payment"

   #-------------------------------------delivery-----------------------------------------------------

   # get "deliveries/get_delivery", to: "deliveries#get_delivery"
   # post "deliveries/create_delivery", to: "deliveries#create_delivery"
end
