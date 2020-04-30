module StaticPagesHelper
	def build_url(photo_hash)
		farm_id = photo_hash.farm
		server_id = photo_hash.server
		id = photo_hash.id
		secret = photo_hash.secret

		url = "https://farm#{farm_id}.staticflickr.com/#{server_id}/#{id}_#{secret}.jpg"
	end
end
