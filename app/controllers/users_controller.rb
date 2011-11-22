class UsersController < InheritedResources::Base
  skip_before_filter :validate_user_name

  def edit
    flash[:notice] = 'Please specify your first and last name'
  end

  def update
    super { root_path }
  end
end
