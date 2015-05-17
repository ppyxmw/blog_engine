require 'twitter'

class Tweeter

  def initialize(author)
    @author = author
  end

  def tweet
    client.update("Hey #{@author.twitter_handle}! Thanks for the ricy post, dude.")
  end

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = "ulJJtEQIuD3cOSz9jKfYbGrF5"
      config.consumer_secret = "196Lr2u0uh3NeK3AZxgwBKt22AziHhXYF59PbY1G3Z9ucEw4kd"
      config.access_token = "461983147-q3cVFFnSeUS7gjSi8J8goDzkD7NKktHp9YoC7ivt"
      config.access_token_secret = "SfYmP8cfWhUlfphZYQ1JvCubmBl6VeHGCDPhsJHK5rzAM"
    end
  end
end
