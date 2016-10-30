class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])

    if @room.update(room_params)
       flash[:notice] = 'Room was sucessfully updated'
       redirect_to rooms_path
    else
      flash[:flash] = 'An error occured'
      render :edit
    end
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      @errors = @room.errors
      render :new
    end
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :price_per_night, :image_url)
    end


end
