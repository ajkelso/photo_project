class Api::V1::GalleriesController < ApplicationController

    def index
        galleries = Gallery.all
        render json: galleries
    end

    def create 

    end

    def show

    end

    def update
    
    end

    def destroy 
    
    end

end
