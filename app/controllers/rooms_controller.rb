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

  def destroy
    if room = Room.find(params[:id])
      room.destroy
      redirect_to root_path
    else
      render :show
    end  
  end

  def edit
    @room = Room.find(params[:id])
  end
  
  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def search
    @rooms = Room.search(params[:keyword])
  end

  private 

  def room_params
    params.require(:room).permit(:image, :prefectures, :postal_code, :city, :town, :building, :phone_number, :comment)
  end
end
