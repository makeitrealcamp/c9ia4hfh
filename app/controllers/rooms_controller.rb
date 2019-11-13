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
      redirect_to rooms_path
    else
      @errors = @room.errors.full_message
      render :new
    end
  end

  def edit
      @room = Room.find(params[:id])
    end

    def update
      @room = Room.find(params[:id])
        if @room.update(room_params)
          redirect_to rooms_path, notice: "Información actualizada satisfactoriamente"
        else
          render :edit, alert: "Problemas con la edición. Intenta de neuvo"
        end
    end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url, :price_per_night)
    end
end
