class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :my_layout

	def current_user  
		@current_user ||= User.find(session[:user_id]) if session[:user_id]  
	end  
  
    def my_layout
      if(current_user.kind == 'admin') then "admin" else "coordinator" end
    end

  	helper_method :current_user
end
