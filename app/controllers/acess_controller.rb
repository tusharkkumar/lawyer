class AcessController < ApplicationController

  before_action :confirm_identity,:except=>[:login,:loginattempt,:logout]


  def index
  


   #admin panel page 
  end


  def login
  	# login page

  
  end

  def loginattempt
  	@username=params[:username]
  	@password=params[:password]

  
    @user=User.where(:username=>@username).first
    if @user
      @authen=@user.authenticate(@password)
      if @authen
        session[:user_id]=@authen.id
        session[:user_name]=@authen.username
        flash[:notice]="login in"
        redirect_to :controller=>"acess",:action=>"index"    
      end
    else
      redirect_to :controller=>"acess",:action=>"index"    
    end
  	
  end

  def logout

        session[:user_id]=nil
        session[:user_name]=nil
        flash[:notice]="logout successfull"
        redirect_to :controller=>"acess",:action=>"login"
  	
  end

  def check
    redirect_to :controller=>"lawyer",:action=>"homepage"
    
  end


  private

  def confirm_identity
    if session[:user_id]
      return true
    else
      flash[:notice]="please log in"
      redirect_to :controller=>"acess",:action=>"login"
      return false
    end  
  end


end
