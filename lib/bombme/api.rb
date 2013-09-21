module Bombme
  class API < Grape::API
    logger Bombme.logger
    version 'v1', using: :header, vendor: 'benjaminguillet'
    format :json

    resource :jack do

      desc 'Get a jack'
      get :random do
        Jack.random
      end

      desc 'Get some jacks'
      params do
        optional :count, type: Integer, default: 5
      end
      get :bomb do
        Jack.bomb(params[:count])
      end

      desc 'How many jacks are there?'
      get :count do
        Jack.count
      end
    end

  end
end
