class FavorsController < ApplicationController
  def new
    @favor = Favor.new
  end

  def create
    @favor = Favor.new(params.require(:favor).permit(:contents, :friend))
    @favor.save!
    redirect_to @favor
  end

  def show
    @favor = Favor.find(params[:id])
  end

end
