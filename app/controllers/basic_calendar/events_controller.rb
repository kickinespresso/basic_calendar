require_dependency "basic_calendar/application_controller"

module BasicCalendar
  class EventsController < ApplicationController
    before_action :set_event, only: [:show]

    # GET /events
    def index
      @events = Event.all
    end

    # GET /events/1
    def show
    end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = Event.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def event_params
        params.require(:event).permit(:title, :description, :event_date, :schedule)
      end
  end
end
