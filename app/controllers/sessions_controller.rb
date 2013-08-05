class SessionsController < ApplicationController
  layout :my_layout
  def new  
    if(session[:user_id] == nil)
      render :layout => 'login'
    else
      redirect_to people_path 
    end
  end  

  def create  
    user = User.find_by_email(params[:email])  
    if user && user.authenticate(params[:password])  
      session[:user_id] = user.id  
      redirect_to people_path, :layout => 'login', :notice => "Logged in!"
    else  
      flash.now.alert = "Invalid email or password"  
      render "new" , :layout => 'login'
    end  
  end    

  def destroy  
    session[:user_id] = nil  
    redirect_to '/'  
  end

  private

    def my_layout
      if(@current_user.kind = 'admin') then "login" else "blah" end
    end

end 