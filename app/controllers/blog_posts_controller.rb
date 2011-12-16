class BlogPostsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index, :show]
  
  def create
    @blog_post = BlogPost.new(params[:blog_post])
    @blog_post.user = current_user

    super { blog_post_path(@blog_post) }
  end
end
