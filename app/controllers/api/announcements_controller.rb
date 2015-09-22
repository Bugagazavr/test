class Api::AnnouncementsController < ApplicationController

  def index
    @announcements = Announcement
      .limit(10)
      .offset(params[:offset].to_i)
      .order('created_at DESC')

    render json: @announcements.to_json(include: :images)
  end

  def show
    @announcement = Announcement.find(params[:id])

    render json: @announcement.to_json(include: :images)
  end

  def create
    @announcement = Announcement.new(announcement_params)

    if @announcement.save
      render json: @announcement
    else
      render json: @announcement.errors, status: :bad_request
    end
  end

  private

  def announcement_params
    params.require(:announcement).permit(:text, announcement_images_attributes: [:image_id])
  end
end
