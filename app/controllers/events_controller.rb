class EventsController < ApplicationController
respond_to :json

def index
  # For a given controller action,
  # respond_with generates an appropriate
  # response based on the mime-type requested
  # by the client.
  respond_with Event.all
end

def show
  respond_with User.find(params[:id]).events
end

def create
  # respond_with Event.create(params[:eventname, :eventlng, :eventlat, :eventplace])
end

def update

end

def destroy

end

private

def event_params
end


end
