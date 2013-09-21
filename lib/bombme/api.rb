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
      get :bomb do
        Jack.bomb
      end

    end

  end
end
