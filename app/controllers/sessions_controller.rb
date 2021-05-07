class SessionsController < ApplicationController
  def new
  end

  def login
  end 
  def create 

    if params[:name] == nil || params[:name].empty?
      redirect_to login_path
    else 
      session[:name]= params[:name]
      redirect_to '/'
    end 
  #   @user = User.find_by(name: params[:name])
  #   if @user 
  #   else 
  #   end 
  #   # if session[:name].present? 
  #   #   binding.pry
  #   #   session[:name]= params[:name]
  #   #   redirect_to login_path
  #   # else
  #   #   # binding.pry
  #   #   redirect_to login_path
  #   # end 
  end 

  def destroy 
    session.delete :name
  end 
end
