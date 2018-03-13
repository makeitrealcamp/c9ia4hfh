class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path, notice: "El actor fue publicado con éxito"
    else
      render :new
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  private
    def room_params
      params.require(:room).permit(:title, :image_url, :description)
    end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url)
    end
end
