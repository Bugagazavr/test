class Api::ImagesController < ApplicationController

  def create
    @image = Image.new(picture: params[:file])

    if @image.save
      render json: @image
    else
      render json: @image.errors, status: :bad_request
    end
  end

end
