class RoomsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @room = Room.new
  end

  def create
    client = Slack::Web::Client.new
    client.auth_test
    @room = Room.new(room_params)

    if @room.save
      client.chat_postMessage(channel: '#general', text: "http://localhost:3000/rooms/#{@room.id}", as_user: true)
      flash[:notice] = "Successfully added new room!"
      redirect_to root_path
    else
      flash[:alert] = "Error adding new room!"
      render :new
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

  def destroy
    @room = Room.find(params[:id])

    @room.destroy
    redirect_to root_path
  end

  private

    def room_params
      params.require(:room).permit(
        :full_address,
        :room_condition,
        :room_price,
        :room_size,
        :room_image,
        :room_description)
    end
end
