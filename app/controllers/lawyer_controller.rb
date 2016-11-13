class LawyerController < ApplicationController

  
    #--------------------------------- signup-----------------------------------#
  before_action :confirm_identity,:except=>[:login,:loginuser,:logout]


  def signup

    
  end

  def signupuser    
    @username=params[:User][:username]
    @password=params[:User][:password]
    @confirmpassword=params[:User][:confirmpassword]
    if @password==@confirmpassword
        @user=User.new(attr_params)

        if @user.save
          @msg="Welcome to the LawyerWorld"
          redirect_to :action=>"login"

        else
          @msg=@user.errors.full_messages
          render "signup"
        end
    else
      @nomatch="Password Could not match"
      render "signup"
      
    end
    
  end

  #--------------------------------- homepage-----------------------------------#

  def homepage
      
  end

  #--------------------------------- show-----------------------------------#


  def show  


  end

  #---------------------------------login-----------------------------------#


  def login

    
  end

  def loginuser
    @username=params[:username]
    

     

    @user=User.where(:username=>@username).first

    if @user && params[:password].present? 
        @authen=@user.authenticate(params[:password])
          if @authen
              session[:user_id]=@authen.id
              session[:username]=@authen.username
              flash[:name]="#{@authen.username.upcase}"
              redirect_to :controller=>"user",:action=>"profile"    
          else
            flash[:notice]="Invalid Password..."
            redirect_to :controller=>"lawyer",:action=>"login"    


          end
    

    else
      flash[:notice]="Invalid Username and Password combination."
      redirect_to :controller=>"lawyer",:action=>"login"    
    end
  
  end

  #--------------------------------- logout-----------------------------------#

  def logout
     session[:user_id]=nil
     session[:username]=nil
     flash[:logout]="LOGOUT SUCCESSFUL..."
     redirect_to :controller=>"lawyer",:action=>"login"    
  end

  #--------------------------------- homepage-----------------------------------#
    
    

  #--------------------------------- insert-----------------------------------#
  
  def insert
    
  end






  #--------------------------------- delete-----------------------------------#



  def profilepage

  end

  #--------------------------------- private methods-----------------------------------#


  private

  def attr_params
    params.require(:User).permit(:username,:password)
    
  end


  def confirm_identity
      if session[:user_id]
         return true
      else
        flash[:notice]="Please Log In"
        redirect_to :controller=>"lawyer",:action=>"login"
        return false

      end
    
  end



  	
end
