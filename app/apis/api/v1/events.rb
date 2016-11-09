module API
  module V1
    class Events < Grape::API
      resource :events do
        desc 'GET /api/v1/events'
        get do
          Events.all
        end

        desc 'GET /api/v1/events/:id'
        params do
          requires :id, type: Integer, desc: 'Event id'
        end
        get ':id' do
          Events.find(params[:id])
        end
      end
    end
  end
end