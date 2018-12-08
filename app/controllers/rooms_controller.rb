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
      redirect_to rooms_path#, notice: 'Habitación añadida correctamente.'
    else
      render :new#, alert: 'No se pudo crear la nueva habitación.'
    end

  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :price_per_night, :image_url)
    end
end
