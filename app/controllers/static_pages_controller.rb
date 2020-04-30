class StaticPagesController < ApplicationController
	include StaticPagesHelper
	def home
		if !params[:user_id].empty?
			photos = flickr.photos.search(api_key: ENV['FLICKR_API_KEY'],
								  user_id: params[:user_id])
			@urls = []
			photos.each do |photo_hash|
				@urls << build_url(photo_hash)
			end

		end
	end
end
