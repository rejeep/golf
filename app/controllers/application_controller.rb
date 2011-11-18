class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter do
    @page_name = t("page.#{params[:controller]}.name", :default => t('page.fallback.name'))
    @page_description = t("page.#{params[:controller]}.description", :default => t('page.fallback.description'))
  end
end
