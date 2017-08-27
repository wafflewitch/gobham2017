class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index ] # temporarily added :index
  before_action :set_event, only: [ :show, :edit, :update, :destroy ]
  before_action :set_user, only: [ :new, :create ] # temporarily removed :index

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = @user
    @event.max_members = 10
    if @event.save!
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def show
    @user = User.find(@event[:user_id])

    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
        marker.lat event.latitude if !event.latitude.nil?
        marker.lng event.longitude if !event.longitude.nil?
    end
  end

  def edit
  end

  def index
    @events = Event.all

    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
        marker.lat event.latitude if !event.latitude.nil?
        marker.lng event.longitude if !event.longitude.nil?
    end
  end

  def destroy
    @event.destroy
    redirect_to user_path(@user)
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :name, :desc, :address, :latitude, :longitude, :start_time, :end_time, :exp, :max_members, :members)
  end

  def set_event
    @event = event.find(params[:id])
  end

  def set_user
    @user = User.find(current_user[:id])
  end

end
