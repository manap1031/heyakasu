class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if 
      @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  private 

  def room_params
    params.require(:room).permit(:image, :prefectures, :postal_code, :city, :town, :building, :phone_number, :comment)
  end
end
