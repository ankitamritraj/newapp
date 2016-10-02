module UsersHelper
	def gravatar_for(user)
		gravatar_id_MD5_hash = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id_MD5_hash}"
		image_tag(gravatar_url, alt:user.email , class:"gravatar")
	end
end
