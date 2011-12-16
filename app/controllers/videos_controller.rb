class VideosController < InheritedResources::Base
  before_filter :authenticate_user!
  
  def create
    @video = Video.new(params[:video])
    @video.user = current_user

    super(&redirect_to_user)
  end

  def update
    super(&redirect_to_user)
  end
  
  def destroy
    super(&redirect_to_user)
  end
  
  
  private

  def redirect_to_user
    Proc.new { user_path(current_user) }
  end
end
