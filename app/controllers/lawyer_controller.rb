class LawyerController < ApplicationController

  
    #--------------------------------- signup-----------------------------------#


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



  end

  #--------------------------------- homepage-----------------------------------#
    
    

  #--------------------------------- insert-----------------------------------#
  
  def insert
    
  end






  #--------------------------------- delete-----------------------------------#



  def profilepage

  end

  private

  def attr_params
    params.require(:User).permit(:username,:password)
    
  end



  	
end
