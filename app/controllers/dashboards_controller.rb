class DashboardsController < ApplicationController
  def index
    @rooms = Room.all
  end
end
