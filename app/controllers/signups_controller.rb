class SignupsController < ApplicationController 
  before_action :signup_object, only: [:new, :create]
  
  def new
  end
  
  def create
    @signup.update(signup_params)
    if @signup.save(signup_params) then redirect_to :thanks end
  end
  
  private
  
  def signup_params
    params.require(:signup).permit(:firstname, :email)
  end
  
  def signup_object
    @signup = Signup.new
  end
  
end
