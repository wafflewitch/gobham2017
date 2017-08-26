class EventsController < ApplicationController
  def new
  	@event = Event.new
  end

  def show
  	@event = Event.find(params[:id])
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def index
  end
end

