class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(params.require(:activity).permit(:name))
    if @activity.save
      redirect_to list_path(params[:list_id])
    else
      render :new
    end
  end

end
