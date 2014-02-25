class WelcomeController < ApplicationController
  
  def hello
    @sysadmin_names = Student.sysadmins
    @from_user = params[:test]
    flash[:alert] = "You are on my app!"
    render 'shared/fancy_hello'
  
  end
  
end
