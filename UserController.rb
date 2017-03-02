class UserController < ApplicationController

def create
#use devise for creation of users and their passwords
end

def updateSubscribedWebsites(:web_params)
  @user = User.find(params[:user_id])
  
  @user.update(:web_preferences)
  
  end
  
  private
    def sub_update_params
      params.require(:update).permit(:subscriptions)
    end
