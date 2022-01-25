class SessionsController < ApplicationController
  def new; end

  def create
    author = Author.find_by_email(params[:email])
    if author&.authenticate(params[:password])
      session[:author_id] = author.id
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.now.alert = 'Email or password is invalid'
      render 'new'
    end
  end

  def destroy
    session[:author_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
