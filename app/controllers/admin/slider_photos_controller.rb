class Admin::SliderPhotosController < InheritedResources::Base
  require_admin
  
  def create
    super(&redirect_to_select_dimensions)
  end

  def update
    super(&redirect_to_select_dimensions)
  end
  
  def select_dimensions
    @slider_photo = SliderPhoto.find(params[:id])
  end
  
  def crop
    @slider_photo = SliderPhoto.find(params[:id])
    @slider_photo.attributes = params[:slider_photo]
    if @slider_photo.cropped?
      @slider_photo.crop!
      @slider_photo.save!
      
      redirect_to admin_slider_photos_path
    else
      flash.now[:error] = 'Dimensions not set'
      
      render 'select_dimensions'
    end
  end


  private

  def redirect_to_select_dimensions
    Proc.new { select_dimensions_admin_slider_photo_path(@slider_photo) }
  end
end
