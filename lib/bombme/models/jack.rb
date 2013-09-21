class Jack
  def self.random
    { jack: @jacks[ rand(@jacks.length) ] }
  end

  private

  @jacks = [
    'https://s3.amazonaws.com/remind101-jack/jack_1.png',
    'https://s3.amazonaws.com/remind101-jack/jack_2.png'
  ]
end
