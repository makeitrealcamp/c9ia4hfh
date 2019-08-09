class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def edit
    @room = Room.find(params["id"])
  end

  def update
    @room = Room.find(params["id"])
    @room.update(room_params)
    redirect_to rooms_path
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def destroy
  Room.destroy(params["id"])
  redirect_to rooms_path
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url, :price_per_night)
    end
end
