module API
  module V1
    class Base < Grape::API
      format :json
      default_format :json
      formatter :json, Grape::Formatter::Jbuilder
      prefix :api # /apiというパスになる
      version 'v1', using: :path # /api/v1というパスになる



      # 404 error

      # 400 error

      # 500 error

      mount V1::Events
      mount V1::Comments
    end
  end
end