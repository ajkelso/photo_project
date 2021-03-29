class Api::V1::PhotosController < ApplicationController
    
    def create
        image = Cloudinary::Uploader.upload(params[:image])
        picture = Photo.create(image: image['url'])
        
        render json: picture
    end

end
