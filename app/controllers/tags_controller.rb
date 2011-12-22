class TagsController < ApplicationController
  def index
    respond_to do |format|
      format.json do
        render :json => ActsAsTaggableOn::Tag.where('LOWER(name) LIKE ?', "%#{params[:q].downcase}%").map do |tag|
          { :id => tag.id, :name => tag.name }
        end
      end
    end
  end
end
