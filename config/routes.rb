StartAgain::Application.routes.draw do

  post 'people/new_person' => 'people#new_person', :as => "select_new_person_type"

  resources :people

  resources :allergies

  resources :availabilities

  resources :medications

  resources :support_services

  resources :roles

  resources :forms

  resources :event_employees

  post 'events/edit_attendees' => 'events#edit_attendees', :as => "event_edit_attendees"
  get 'events/add_attendees' => 'events#add_attendees', :as => "event_add_attendees"
  get 'events/add_attendees_2'=> 'events#add_attendees_2', :as => 'event_add_attendees_2'
  get 'events/mailings'   => 'events#mailing'       , :as => 'event_mailing'
  get 'events/:id/mailingssearch'   => 'events#mailing_search'       , :as => 'event_mailing_search'
  get 'events/by_person'   => 'events#by_person'       , :as => 'events_by_person'
  get 'events/by_type'   => 'events#by_type'       , :as => 'events_by_type'
  get 'reports'   => 'reports#index'
  post 'reports/students_events' => 'reports#students_events'
  post 'reports/events_overall_data' => 'reports#events_overall_data'
  get 'program_attendance/do' => 'program_attendances#do', :as => "program_attendance_do"
  get 'program_attendance/do_2'=> 'program_attendances#do_2', :as => "program_attendance_do_2"
  get 'program_location/program_employees' => 'program_locations#program_employees', :as => "program_location_program_employees"


  resources :person_events

  resources :events

  resources :program_attendances

  resources :program_dates

  resources :program_employees

  resources :program_enrollments

  resources :program_locations

  resources :programs

  resources :interests

  resources :schools
  get ':action' => 'reports#:action'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
