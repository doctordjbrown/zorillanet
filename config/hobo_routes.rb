# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Zorillanet::Application.routes.draw do


  # Resource routes for controller "conditions"
  get 'conditions(.:format)' => 'conditions#index', :as => 'conditions'
  get 'conditions/new(.:format)', :as => 'new_condition'
  get 'conditions/:id/edit(.:format)' => 'conditions#edit', :as => 'edit_condition'
  get 'conditions/:id(.:format)' => 'conditions#show', :as => 'condition', :constraints => { :id => %r([^/.?]+) }
  post 'conditions(.:format)' => 'conditions#create', :as => 'create_condition'
  put 'conditions/:id(.:format)' => 'conditions#update', :as => 'update_condition', :constraints => { :id => %r([^/.?]+) }
  delete 'conditions/:id(.:format)' => 'conditions#destroy', :as => 'destroy_condition', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "locations"
  get 'locations(.:format)' => 'locations#index', :as => 'locations'
  get 'locations/new(.:format)', :as => 'new_location'
  get 'locations/:id/edit(.:format)' => 'locations#edit', :as => 'edit_location'
  get 'locations/:id(.:format)' => 'locations#show', :as => 'location', :constraints => { :id => %r([^/.?]+) }
  post 'locations(.:format)' => 'locations#create', :as => 'create_location'
  put 'locations/:id(.:format)' => 'locations#update', :as => 'update_location', :constraints => { :id => %r([^/.?]+) }
  delete 'locations/:id(.:format)' => 'locations#destroy', :as => 'destroy_location', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "patients"
  get 'patients(.:format)' => 'patients#index', :as => 'patients'
  get 'patients/new(.:format)', :as => 'new_patient'
  get 'patients/:id/edit(.:format)' => 'patients#edit', :as => 'edit_patient'
  get 'patients/:id(.:format)' => 'patients#show', :as => 'patient', :constraints => { :id => %r([^/.?]+) }
  post 'patients(.:format)' => 'patients#create', :as => 'create_patient'
  put 'patients/:id(.:format)' => 'patients#update', :as => 'update_patient', :constraints => { :id => %r([^/.?]+) }
  delete 'patients/:id(.:format)' => 'patients#destroy', :as => 'destroy_patient', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  put 'users/:id/accept_invitation(.:format)' => 'users#do_accept_invitation', :as => 'do_user_accept_invitation'
  get 'users/:id/accept_invitation(.:format)' => 'users#accept_invitation', :as => 'user_accept_invitation'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'

  namespace :admin do


    # Lifecycle routes for controller "admin/users"
    post 'users/invite(.:format)' => 'users#do_invite', :as => 'do_user_invite'
    get 'users/invite(.:format)' => 'users#invite', :as => 'user_invite'

    # Resource routes for controller "admin/users"
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  end

end
