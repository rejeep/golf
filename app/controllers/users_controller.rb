class UsersController < InheritedResources::Base
  skip_before_filter :validate_user_name

  def index
    if @query = params[:term].presence
      @users = User.search(@query)
    else
      @users = User.all
    end

    respond_to do |format|
      format.html
      format.json do
        render :json => @users.map { |user|
          { :id => user.id, :label => user.name }
        }
      end
    end
  end

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
