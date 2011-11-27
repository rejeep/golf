class TagsController < ApplicationController
  def index
    respond_to do |format|
      format.json do
        render :json => ActsAsTaggableOn::Tag.where('name LIKE ?', "%#{params[:q]}%").map do |tag|
          { :id => tag.id, :name => tag.name }
        end
      end
    end
  end
end
