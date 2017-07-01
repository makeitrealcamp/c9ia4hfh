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
      render 'rooms/new'
    end

  end

  def edit
    begin
      @room = Room.find(params[:id])
    rescue ActiveRecordNotFound
      redirect_to(rooms_path)
    end
  end

  def update
    @room = Room.find(params[:id])

    if @room.update(room_params)
      redirect_to(rooms_path)
    else
      render 'rooms/edit'
    end
  end

  def destroy
    @room = Room.destroy(params[:id])
    redirect_to(rooms_path)
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url, :price_per_night)
    end
end
