class Api::V1::GalleriesController < ApplicationController

    def index
        galleries = Gallery.all
        render json: galleries
    end

    def create 
        @gallery = Gallery.create(gallery_params)
        if @gallery.valid?
            #create photos
            
        else
            render json: { message: 'Gallery was not created'} status: :not_accaptable
        end

    end

    def show

    end

    def update
    
    end

    def destroy 
    
    end

end
