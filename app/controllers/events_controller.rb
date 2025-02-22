class EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events
      end

      def show
        @event = Event.find(params[:id])
        render json: @event
      end

      def create
        @event = Event.new(event_params)
        if @event.save
          render json: @event, status: :created
        else
          render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def event_params
        params.require(:event).permit(:name, :description, :time)
      end
end
