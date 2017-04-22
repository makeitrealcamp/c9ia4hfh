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
      @errors = @room.errors.full_messages
      render :new
    end
  end


  def edit
    @room = Room.find(params[:id])
  end


  def update
    room = Room.find(params[:id])
    room.update(room_params)
    if room.save()
      redirect_to rooms_path, :notice => "La Habitacion ha sido modificada";
   else
      render "edit";
   end
end

  

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url, :price_per_night)
    end
end
