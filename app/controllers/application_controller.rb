class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def confirm_identity
      if session[:user_id]
         return true
      else
        flash[:notice]="Please Log In..."
        redirect_to :controller=>"lawyer",:action=>"login"
        return false

      end
    
  end
end
