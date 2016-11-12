module API
  module V1
    class Events < Grape::API
      resource :events do
        desc 'GET /api/v1/events'
        get '/', jbuilder:'api/v1/events/index' do
          @events = Event.all
        end

        desc 'GET /api/v1/events/:id'
        params do
          requires :id, type: Integer, desc: 'Event id'
        end
        get '/:id', jbuilder:'api/v1/events/show' do
          @event = Event.find(params[:id])
        end
      end
    end
  end
end