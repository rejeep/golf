class Admin::BlogPostsController < InheritedResources::Base
  require_admin
end
