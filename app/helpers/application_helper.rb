module ApplicationHelper
  attr_reader :page_name, :page_description

  def menu_link(name)
    path = send("#{name}_path")
    options = {}
    options[:class] = 'active' if path == request.path
    content_tag(:li, options) do
      link_to t("menu.#{name}"), path
    end
  end
end
