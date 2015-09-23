class RoomsController < ApplicationController
  before_action :set_room, only: [:edit, :update]

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path, notice: "Se creo la habitación: #{@room.title.capitalize}"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to rooms_path, notice: "Se ha actualizado la información de la habitación: #{@title.capitalize}"
    else
      render :edit
    end
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :price_per_night, :image_url)
    end

    def set_room
      @room = Room.find(params[:id])
      @title = @room.title
    end
end
