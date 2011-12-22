class ActsAsTaggableOn::TagsController < InheritedResources::Base
  before_filter do
    unless admin?
      permission_denied!
    end
  end

  def create
    super { acts_as_taggable_on_tags_path }
  end

  def update
    super { acts_as_taggable_on_tags_path }
  end

  def destroy
    super { acts_as_taggable_on_tags_path }
  end
end
