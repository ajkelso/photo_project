class Api::V1::GalleriesController < ApplicationController

    def index
        galleries = Gallery.all
        render json: galleries
    
    end

end
