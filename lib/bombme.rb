autoload :Jack, 'bombme/models/jack'

module Bombme
  autoload :API, 'bombme/api.rb'

  def self.logger
    @logger ||=  Logger.new(STDOUT)
  end

  def self.app
    @app ||= Rack::Builder.app do
      run API
    end
  end
end
