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
    @list = List.find(params[:id])
  end

  def addactivity
    @list = List.find(params[:id])
    @listactivity = Listactivity.new
    @listactivity.list_id = @list.id
    @listactivity.activity_id = params[:activity_id]
    if @listactivity.save
      redirect_to edit_activity_path(id: @listactivity.id)
    else
      redirect_to list_path
    end
  end

  def updateactivity
    @listactivity = Listactivity.find(params[:id])
    if @listactivity.update(params.require(:listactivity).permit(:status, :notes))
      redirect_to list_path(id: @listactivity.list_id)
    else
      render :edit
    end
    raise params.inspect
  end

  def deleteactivity
  end
end
