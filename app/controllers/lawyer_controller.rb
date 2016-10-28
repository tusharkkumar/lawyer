class LawyerController < ApplicationController

  def homepage
		  
  end

  def show	


  end

  def loginuser


  end

  def signupuser

    @password=params[:UserAuthenticate][:password]
    @confirmpass=params[:UserAuthenticate][:confirmpassword]
    @user=UserAuthenticate.new(attr_params)
    if @password.to_s==@confirmpass.to_s

      if @user.save
        @msg="USER SAVE SUCCESSFULLY"
        redirect_to :action=>"loginpage"
      else
        @msg="USER NOT SAVED! TRY AGAIN"
        render "signup"

      end

    else

      @nomatch="PASSWORD NOT MATCHED TRY AGIAN"
      render "signup"


      
    end
    
  end

  def delete

  end


  def login
    
    
  end

  def profilepage

  end

  def signup
    
  end

  private

  def attr_params
    params.require(:UserAuthenticate).permit(:username,:password)
    
  end

  	
end
