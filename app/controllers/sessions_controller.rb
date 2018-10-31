require 'pry'
class SessionsController < ApplicationController
  def new 
  end

  def create
    if !current_user
      redirect_to controller: 'sessions', action: 'new'
    elsif params[:name]
      session[:name] = params[:name]
    end
  end

end