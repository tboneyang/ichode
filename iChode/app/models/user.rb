class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
  end
end
=begin
	def facebook
		@facebook ||= Koala::Facebook::API.new(oauth_token)
	end

	def friends_count
		facebook.get_connection("me", "friends").size
	rescue Koala::Facebook::APIError => e 
		logger.info e.to_s
		nil
	end
=end
end
