class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter do
    @page_title = t("page.#{params[:controller]}", :default => t('page.fallback'))
  end

  def validate_user_name
    if user_signed_in? and not current_user.name?
      redirect_to edit_user_path(current_user)
    end
  end
  before_filter :validate_user_name
end
