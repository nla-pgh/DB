StartAgain::Application.routes.draw do

  resources :people

  post 'people/new_person' => 'people#new_person', :as => "select_new_person_type"
  post 'people/search_people' => 'people#search', :as => "person_search"
  post 'programs/new_program' => 'programs#new_program', :as => "select_new_program_type"
  post 'programs/search_programs' => 'programs#search', :as => "program_search"
  post 'programs/show_all' => 'programs#show_all', :as => "program_show_all"

  resources :allergies

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
  # get ':action' => 'reports#:action'

  # Semi-static page routes
  get 'home' => 'home#index', :as => 'home_path'

  # Set the root url
  root :to => 'home#index'

  # Last route in routes.rb that essentially handles routing errors
  get '*a', :to => 'errors#routing'
end
