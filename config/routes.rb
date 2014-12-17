Rails.application.routes.draw do
  root 'welcome#login'

  get 'login', to: "welcome#login", as: 'login'

  post 'signup', to: "welcome#create", as: 'signup'

  post 'login', to: "welcome#attempt_login"

  get 'index', to: "welcome#index", as: 'index'

  get 'logout', to: "welcome#logout"

  scope 'api' do
    # resources :users do
    #   resources :events
    # end
    resources :events
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase



  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
