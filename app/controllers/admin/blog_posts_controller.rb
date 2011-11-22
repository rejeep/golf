class Admin::BlogPostsController < InheritedResources::Base
  require_admin
  
  def create
    @blog_post = BlogPost.new(params[:blog_post])
    @blog_post.user = current_user

    super { admin_blog_post_path(@blog_post) }
  end
end
