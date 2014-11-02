class ListactivitiesController < ApplicationController

  def edit
    @listactivity = Listactivity.find(params[:id])
    @levels = ["yes", "no", "maybe"]
  end

end
