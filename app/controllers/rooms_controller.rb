class RoomsController < ApplicationController

  def index
    @users = User.all
    @rooms = Room.all
    @room = Room.new
  end

  def show
  end

  def create
    @room = Room.new(params_rooms)
    @room.user = current_user
    @room.state = "Reservado"
    respond_to do |format|
      if @room.save!
        format.html {redirect_to rooms_path(@room, anchor: "review-#{@room.id}")}
        format.json
      else
       format.html {render :new}
       format.json
      end
    end

  end


  private

  def params_rooms
    params.require(:room).permit(:title, :description, :state)

  end
end
