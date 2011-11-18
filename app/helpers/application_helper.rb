module ApplicationHelper
  def page_name
    @page_name || t('page.name')
  end
  
  def page_description
    @page_name || t('page.description')
  end
  
  def menu_link(name)
    path = send("#{name}_path")
    options = {}
    options[:class] = 'active' if path == request.path
    content_tag(:li, options) do
      link_to t("menu.#{name}"), path
    end
  end
end
