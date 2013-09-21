module Bombme
  class API < Grape::API
    logger Bombme.logger
    version 'v1', using: :header, vendor: 'benjaminguillet'
    format :json

    resource :jack do
      desc 'Get a jack'
      get :random do

      end
    end

  end
end
