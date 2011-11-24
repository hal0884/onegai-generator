class User < ActiveRecord::Base
  
  def self.create_with_omniauth(auth)
    puts "TTTTTTTTTTTT"
    puts auth
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.screen_name = auth["info"]['image']
      user.screen_name = user.screen_name.gsub("square","large")
      puts user.screen_name
    end
  end
  
  def post_feed(options = {})
    logger.debug "[POST/feed] #{options.inspect}"
    self.client.post("me/feed", options) unless mock?
  end

  def client
    @client ||= RestGraph.new(:access_token => self.oauth_token)
  end
  
  
end
