class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
  end

  private 

  def room_params
    params.require(:room).permit(:image, :postal_code, :prefecture, :city, :town, :building, :comment)
  end
end
