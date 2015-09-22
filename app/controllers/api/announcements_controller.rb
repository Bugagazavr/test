class Api::AnnouncementsController < ApplicationController

  def index
    @announcements = Announcement
      .eager_load(:images)
      .limit(10)
      .offset(params[:offset].to_i)

    render json: @announcements
  end


  def create
    @announcement = Announcement.new(announcement_params)

    if @announcement.save
      render json: @announcement
    else
      render json: @announcement.errors
    end
  end

  private

  def announcement_params
    params.require(:announcement).permit(:text, announcement_images_attributes: [:image_id])
  end
end
