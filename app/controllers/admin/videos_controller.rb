class Admin::VideosController < InheritedResources::Base
  require_admin

  def create
    @video = Video.new(params[:video])
    @video.user = current_user
    @video.upload_video(params[:video][:movie].tempfile)

    super { admin_videos_path }
  end
end
