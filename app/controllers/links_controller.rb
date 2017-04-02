class LinksController < ApplicationController

  def index
  end

  def show
  end

  def new
    @link = Link.new
  end

  def create
    @link = current_user.links.create(links_params)
  end

  def edit
    @link = current_user.links.find(params[:id])
  end

  def update
    @link = current_user.links.update(links_params)
  end

  def destroy
  end

private

  def links_params
    params.require(:link).permit(:url, :private)
  end

end