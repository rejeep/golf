class UsersController < InheritedResources::Base
  skip_before_filter :validate_user_name

  def show
    super do
      @page_title = @user.name
    end
  end

  def edit
    flash[:notice] = 'Please specify your first and last name'
  end

  def update
    super { root_path }
  end
end
