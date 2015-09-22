class Api::AnnouncementsController < ApplicationController

  def index
    @announcements = Announcement
      .eager_load(:images)
      .limit(10)
      .offset(params[:offset].to_i)

    render json: @announcements
  end


  def create
  end

  private

end
