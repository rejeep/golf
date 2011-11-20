class Admin::PhotosController < InheritedResources::Base
  layout 'admin'

  def create
    super(&redirect_to_index)
  end

  def update
    super(&redirect_to_index)
  end


  private

  def redirect_to_index
    Proc.new { admin_photos_path }
  end
end
