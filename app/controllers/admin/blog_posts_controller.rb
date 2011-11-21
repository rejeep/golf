class Admin::BlogPostsController < InheritedResources::Base
  require_user
end
