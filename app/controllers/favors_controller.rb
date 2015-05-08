class FavorsController < ApplicationController
  before_action :require_login

  def index
    @favors = Favor.all
  end

  def new
    @favor = Favor.new
  end

  def create
    Favor.create(favor_params)
    redirect_to favors_path
  end

  def show
    @favor = Favor.find(params[:id])
  end

  private
  
  def favor_params
    params.require(:favor).permit(:contents, :friend)
  end
end
