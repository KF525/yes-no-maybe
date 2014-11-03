class ListactivitiesController < ApplicationController

  def edit
    @listactivity = Listactivity.find(params[:id])
    @levels = ["yes", "no", "maybe"]
  end

  def show
    @listactivity = Listactivity.find(params[:id])
  end

  def addactivity
    @list = List.find(params[:id])
    @listactivity = Listactivity.new
    @listactivity.list_id = @list.id
    @listactivity.activity_id = params[:activity_id]
    @listactivity.name = @listactivity.activity.name
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
  end

  def destroyactivity
    @listactivity = Listactivity.find(params[:id])
    if @listactivity.destroy
      redirect_to list_path(id: @listactivity.list_id)
    else
      render :edit
    end
  end
end
