module API
  module V1
    class Comments < Grape::API
      resource :events do
        route_param :event_id do
          resource :comments do
            desc 'GET /api/v1/events/:event_id/comments'
            get do
              Event.find(params[:event_id]).comments
            end
          end
        end
      end
    end
  end
end