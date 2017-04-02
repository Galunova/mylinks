class LinksController < ApplicationController

  def index
  end

  def show
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(links_params)
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.update(links_params)
  end

  def destroy
  end

private

  def links_params
    params.require(:link).permit(:url, :private)
  end

end