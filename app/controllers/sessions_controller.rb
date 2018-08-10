class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to '/sessions/new'
    elsif session[:name]
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

end
