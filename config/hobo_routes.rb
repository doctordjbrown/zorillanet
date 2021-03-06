# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Zorillanet::Application.routes.draw do


  # Resource routes for controller "alerts"
  get 'alerts(.:format)' => 'alerts#index', :as => 'alerts'
  get 'alerts/:id/edit(.:format)' => 'alerts#edit', :as => 'edit_alert'
  get 'alerts/:id(.:format)' => 'alerts#show', :as => 'alert', :constraints => { :id => %r([^/.?]+) }
  post 'alerts(.:format)' => 'alerts#create', :as => 'create_alert'
  put 'alerts/:id(.:format)' => 'alerts#update', :as => 'update_alert', :constraints => { :id => %r([^/.?]+) }
  delete 'alerts/:id(.:format)' => 'alerts#destroy', :as => 'destroy_alert', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "assets"
  get 'assets(.:format)' => 'assets#index', :as => 'assets'
  get 'assets/:id/edit(.:format)' => 'assets#edit', :as => 'edit_asset'
  get 'assets/:id(.:format)' => 'assets#show', :as => 'asset', :constraints => { :id => %r([^/.?]+) }
  post 'assets(.:format)' => 'assets#create', :as => 'create_asset'
  put 'assets/:id(.:format)' => 'assets#update', :as => 'update_asset', :constraints => { :id => %r([^/.?]+) }
  delete 'assets/:id(.:format)' => 'assets#destroy', :as => 'destroy_asset', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "conditions"
  get 'conditions(.:format)' => 'conditions#index', :as => 'conditions'
  get 'conditions/:id/edit(.:format)' => 'conditions#edit', :as => 'edit_condition'
  get 'conditions/:id(.:format)' => 'conditions#show', :as => 'condition', :constraints => { :id => %r([^/.?]+) }
  post 'conditions(.:format)' => 'conditions#create', :as => 'create_condition'
  put 'conditions/:id(.:format)' => 'conditions#update', :as => 'update_condition', :constraints => { :id => %r([^/.?]+) }
  delete 'conditions/:id(.:format)' => 'conditions#destroy', :as => 'destroy_condition', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "consultants"
  get 'consultants(.:format)' => 'consultants#index', :as => 'consultants'
  get 'consultants/:id/edit(.:format)' => 'consultants#edit', :as => 'edit_consultant'
  get 'consultants/:id(.:format)' => 'consultants#show', :as => 'consultant', :constraints => { :id => %r([^/.?]+) }
  post 'consultants(.:format)' => 'consultants#create', :as => 'create_consultant'
  put 'consultants/:id(.:format)' => 'consultants#update', :as => 'update_consultant', :constraints => { :id => %r([^/.?]+) }
  delete 'consultants/:id(.:format)' => 'consultants#destroy', :as => 'destroy_consultant', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "location_statuses"
  get 'location_statuses(.:format)' => 'location_statuses#index', :as => 'location_statuses'
  get 'location_statuses/:id/edit(.:format)' => 'location_statuses#edit', :as => 'edit_location_status'
  get 'location_statuses/:id(.:format)' => 'location_statuses#show', :as => 'location_status', :constraints => { :id => %r([^/.?]+) }
  post 'location_statuses(.:format)' => 'location_statuses#create', :as => 'create_location_status'
  put 'location_statuses/:id(.:format)' => 'location_statuses#update', :as => 'update_location_status', :constraints => { :id => %r([^/.?]+) }
  delete 'location_statuses/:id(.:format)' => 'location_statuses#destroy', :as => 'destroy_location_status', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "locations"
  get 'locations(.:format)' => 'locations#index', :as => 'locations'
  get 'locations/new(.:format)', :as => 'new_location'
  get 'locations/:id/edit(.:format)' => 'locations#edit', :as => 'edit_location'
  get 'locations/:id(.:format)' => 'locations#show', :as => 'location', :constraints => { :id => %r([^/.?]+) }
  post 'locations(.:format)' => 'locations#create', :as => 'create_location'
  put 'locations/:id(.:format)' => 'locations#update', :as => 'update_location', :constraints => { :id => %r([^/.?]+) }
  delete 'locations/:id(.:format)' => 'locations#destroy', :as => 'destroy_location', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "patients"
  put 'patients/:id/admit_patient(.:format)' => 'patients#do_admit_patient', :as => 'do_patient_admit_patient'
  get 'patients/:id/admit_patient(.:format)' => 'patients#admit_patient', :as => 'patient_admit_patient'
  put 'patients/:id/disharge_patient(.:format)' => 'patients#do_disharge_patient', :as => 'do_patient_disharge_patient'
  get 'patients/:id/disharge_patient(.:format)' => 'patients#disharge_patient', :as => 'patient_disharge_patient'

  # Resource routes for controller "patients"
  get 'patients(.:format)' => 'patients#index', :as => 'patients'
  get 'patients/new(.:format)', :as => 'new_patient'
  get 'patients/:id/edit(.:format)' => 'patients#edit', :as => 'edit_patient'
  get 'patients/:id(.:format)' => 'patients#show', :as => 'patient', :constraints => { :id => %r([^/.?]+) }
  post 'patients(.:format)' => 'patients#create', :as => 'create_patient'
  put 'patients/:id(.:format)' => 'patients#update', :as => 'update_patient', :constraints => { :id => %r([^/.?]+) }
  delete 'patients/:id(.:format)' => 'patients#destroy', :as => 'destroy_patient', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "tasklists"
  get 'tasklists(.:format)' => 'tasklists#index', :as => 'tasklists'
  get 'tasklists/new(.:format)', :as => 'new_tasklist'
  get 'tasklists/:id/edit(.:format)' => 'tasklists#edit', :as => 'edit_tasklist'
  get 'tasklists/:id(.:format)' => 'tasklists#show', :as => 'tasklist', :constraints => { :id => %r([^/.?]+) }
  post 'tasklists(.:format)' => 'tasklists#create', :as => 'create_tasklist'
  put 'tasklists/:id(.:format)' => 'tasklists#update', :as => 'update_tasklist', :constraints => { :id => %r([^/.?]+) }
  delete 'tasklists/:id(.:format)' => 'tasklists#destroy', :as => 'destroy_tasklist', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "tasks"
  get 'tasks(.:format)' => 'tasks#index', :as => 'tasks'
  get 'tasks/new(.:format)', :as => 'new_task'
  get 'tasks/:id/edit(.:format)' => 'tasks#edit', :as => 'edit_task'
  get 'tasks/:id(.:format)' => 'tasks#show', :as => 'task', :constraints => { :id => %r([^/.?]+) }
  post 'tasks(.:format)' => 'tasks#create', :as => 'create_task'
  put 'tasks/:id(.:format)' => 'tasks#update', :as => 'update_task', :constraints => { :id => %r([^/.?]+) }
  delete 'tasks/:id(.:format)' => 'tasks#destroy', :as => 'destroy_task', :constraints => { :id => %r([^/.?]+) }


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
