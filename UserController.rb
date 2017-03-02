class UserController < ApplicationController

def create
#use devise for creation of users and their passwords
end

def updateSubscribedWebsites
  @user = User.find(params[:user_id])
  @user.update(sub_update_params)
  
  Delayed::Job.enqueue
end
  
private
  def sub_update_params
    params.require(:update).permit(:subscriptions)
  end
  
end
