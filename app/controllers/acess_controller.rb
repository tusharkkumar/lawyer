class AcessController < ApplicationController
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
        
      redirect_to :controller=>"acess",:action=>"index"    


      end
    else
      render :controller=>"acess",:action=>"index"    
    end
  	
  end

  def logout
  	
  end

  def check
    redirect_to :controller=>"lawyer",:action=>"homepage"
    
  end
end
