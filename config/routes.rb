Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'
   
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
end
