class LinksController < ApplicationController

  def index
    @links = Link.paginate(page: params[:page])
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = current_user.links.new(links_params)
    if @link.save
      redirect_to link_path(@link.id)
    else
      render :new
    end
  end

  def edit
    @link = current_user.links.find(params[:id])
  end

  def update
    @link = current_user.links.find(params[:id])
    if @link.update(links_params)
      redirect_to link_path(@link.id)
    else
      render :edit
    end
  end

  def destroy
  end

private

  def links_params
    params.require(:link).permit(:url, :private)
  end

end