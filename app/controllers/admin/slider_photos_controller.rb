class Admin::SliderPhotosController < InheritedResources::Base
  layout 'admin'

  def create
    create! do
      select_dimensions_admin_slider_photo_path(@slider_photo)
    end
  end

  def update
    super(&redirect_to_index)
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

  def redirect_to_index
    Proc.new { admin_slider_photos_path }
  end
end
