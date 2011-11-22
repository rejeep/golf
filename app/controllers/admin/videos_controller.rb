class Admin::VideosController < InheritedResources::Base
  require_admin

  def create
    super do
      @video.upload_video(params[:video][:movie].tempfile)

      admin_videos_path
    end
  end
end
