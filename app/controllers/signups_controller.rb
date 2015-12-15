class SignupsController < ApplicationController 
  before_action :signup_object, only: [:new, :create]
  
  def new
  end
  
  def create
<<<<<<< HEAD
    @signup.update(signup_params)
    if @signup.save(signup_params) then redirect_to :thanks end
=======
    if @signup.save(signup_params) then redirect_to :pages end
>>>>>>> 8d3df5a2d08a9faa1af650659c3b248f7ac62834
  end
  
  private
  
  def signup_params
    params.require(:signup).permit(:firstname, :email)
  end
  
  def signup_object
    @signup = Signup.new
  end
  
end
