class Admin::EventsController < ApplicationController

  before_action :find_event, only: [:show, :edit, :update, :destroy]



  def index
    @events = Event.all
  end


  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end


  def show
    @program_item = ProgramItem.new
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :subtitle, :description)
  end

end
