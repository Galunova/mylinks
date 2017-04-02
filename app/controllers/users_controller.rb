class UsersController < ApplicationController

  def show
    redirect_to user_links_path(params[:id])
  end

  def links
    @user = User.find(params[:user_id])
  end

end