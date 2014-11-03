Rails.application.routes.draw do

  get "activities",                 to: "activities#index",                   as: :activities
  get "activities/new",             to: "activities#new",                     as: :new_activity
  post "activities",                to: "activities#create"

  get "lists",                      to: "lists#index",                        as: :lists
  post "lists",                     to: "lists#create",                       as: :new_list
  get "lists/:id",                  to: "lists#show",                         as: :list
  delete "lists/:id",               to: "lists#destroy",                      as: :delete_list

  post "lists/:id/activity",        to: "listactivities#addactivity",         as: :add_activity
  patch "lists/:id/activity",       to: "listactivities#updateactivity",      as: :update_activity
  delete "lists/:id/activity",      to: "listactivities#destroyactivity",     as: :delete_activity
  get "listactivities/:id/edit",    to: "listactivities#edit",                as: :edit_activity
  get "listactivities/:id/show",    to: "listactivities#show",                as: :listactivity

  root "home#index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
