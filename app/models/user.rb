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
  
  
end
