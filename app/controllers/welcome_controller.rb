class WelcomeController < ApplicationController
  
  def hello
    @sysadmin_names = Student.sysadmins
    @from_user = params[:test]
  
  end
  
end
