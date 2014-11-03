class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    @list = List.new(params.require(:list).permit(:name))
    if @list.save
      redirect_to lists_path
    else
      render :index
    end
  end

  def show
    @activities = Activity.all
    @activity = Activity.new
    @list = List.find(params[:id])

    @yes_activities = Listactivity.where("status = ? AND list_id = ?","yes", params[:id])
    @no_activities = Listactivity.where("status = ? AND list_id = ?","no", params[:id])
    @maybe_activities = Listactivity.where("status = ? AND list_id = ?","maybe", params[:id])
    @nil_activities = Activity.where(status: nil)
    
  end
end
