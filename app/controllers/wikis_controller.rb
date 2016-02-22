class WikisController < ApplicationController
  def new
    @wikis = Wiki.new
  end
  
  def index
    @wikis = Wiki.all
  end

  def show
    @wikis = Wiki.find(params[:id])
  end
  
  def create
    @wikis = Wiki.new
    @wikis.title   = params[:wiki][:title]
    @wikis.body    = params[:wiki][:body]
    @wikis.private = params[:wiki][:private]
    
    if @wikis.save
      flash[:notice] = "Wiki was saved."
      redirect_to @wikis
    else
      flash.new[:alert] = "There was an error saving the post. Please try again."
      render :new
    end
  end
  
  def edit
    @wikis = Wiki.find(params[:id])
  end
  
  def update
    @wikis = Wiki.find(params[:id])
    @wikis.title   = params[:wiki][:title]
    @wikis.body    = params[:wiki][:body]
    @wikis.private = params[:wiki][:private]
    
    if @wikis.save
      flash[:notice] = "Wiki was updated."
      redirect_to @wikis
    else
      flash.now[:alert] = "There was an error saving the wiki. Please try again."
      render :edit
    end
  end

  def destroy
    @wikis = Wiki.find(params[:id])
    
    if @wikis.destroy
      flash[:notice] = "\"#{@wikis.title}\" was deleted successfully."
      redirect_to wikis_path
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end
  end
end
