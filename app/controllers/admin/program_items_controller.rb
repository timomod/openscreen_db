class Admin::ProgramItemsController < ApplicationController

  before_action :find_event

  def create
    @program_item = ProgramItem.new(program_item_params)
    @program_item.event = @event
    if @program_item.save
      redirect_to admin_event_path(@event)
    else
      render "admin/events/show"
    end
  end

  def destroy
    @program_item = ProgramItem.find(params[:id])
    @program_item.destroy
    redirect_to admin_event_path(@event)
  end

  private

  def find_event
    @event = Event.find(params[:event_id])
  end

  def program_item_params
    params.require(:program_item).permit(:event_id, :film_id)
  end

end
