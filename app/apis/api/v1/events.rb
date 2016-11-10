module API
  module V1
    class Events < Grape::API
      resource :events do
        desc 'GET /api/v1/events'
        get do
          Event.all
        end

        desc 'GET /api/v1/events/:id'
        params do
          requires :id, type: Integer, desc: 'Event id'
        end
        get ':id' do
          Event.find(params[:id])
        end
      end
    end
  end
end