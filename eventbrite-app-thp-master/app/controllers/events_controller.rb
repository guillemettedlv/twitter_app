class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  
  def index
    @all_events = Event.all
  end

	def show
		@event = Event.find(params[:id])
  end
  
  def new
		@event = Event.new
	end
end
