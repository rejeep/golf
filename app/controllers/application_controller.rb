class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter do
    @page_title = t("page.#{params[:controller]}", :default => t('page.fallback'))
  end
end
