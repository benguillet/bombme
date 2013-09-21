module Bombme
  autoload :API, 'bombme/api.rb'

  def self.logger
    @logger ||=  Logger.new(STDOUT)
  end
end
