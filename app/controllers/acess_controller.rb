class AcessController < ApplicationController
  def index
  	@username=params[:username]
  	@password=params[:password]


   #admin panel page 
  end


  def login
  	# login page
  
   end

  def loginattempt
  	@username=params[:User][:username]
  	@password=params[:password]
    byebug
    
    @user=User.where(:username=>@username).first
    if @user
      @authen=@user.authenticate(@password)
      if @authen
        redirect_to :action=>"index"
      end
    else
      @msg="Invalid Username or Password combination"
      render "login"

    end
  	
  end

  def logout
  	
  end

  def check
    redirect_to :controller=>"lawyer",:action=>"homepage"
    
  end
end
