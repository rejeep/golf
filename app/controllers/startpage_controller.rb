class StartpageController < ApplicationController
  def index
    @user = current_user
    @blog_posts = BlogPost.limit(3)
  end
end
