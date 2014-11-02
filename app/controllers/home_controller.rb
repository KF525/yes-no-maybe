class HomeController < ApplicationController

  def index
    @list = List.new
  end

end
