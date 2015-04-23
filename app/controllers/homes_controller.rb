class HomesController < ApplicationController
  def show
    redirect_to favors_path if signed_in?
  end

end
