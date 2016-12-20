class EventsController < ApplicationController

  before_action :find_event, only: [:show]



  def index
    @events = Event.all
  end


  def show
  end


  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :subtitle, :description)
  end

end

