module ApplicationHelper
  attr_reader :page_title

  def admin_menu_link(name)
    create_menu_link(name, :admin)
  end

  def sidebar(&block)
    content_for(:sidebar, &block)
  end

  def slider(&block)
    content_for(:slider, &block)
  end

  def markdown(text)
    Markdown.new(text).to_html.html_safe
  end

  def youtube_thumbnail(video)
    link_to(image_tag("http://img.youtube.com/vi/#{video.youtube_id}/default.jpg"), "http://www.youtube.com/v/#{video.youtube_id}&feature=player_embedded", :class => 'youtube_thumbnail')
  end


  private

  def create_menu_link(name, scope = nil)
    if scope.present?
      path = send("admin_#{name}_path")
      link_name = t("menu.admin.#{name}")
    else
      path = send("#{name}_path")
      link_name = t("menu.#{name}")
    end

    options = {}
    options[:class] = 'active' if path == request.path
    content_tag(:li, options) do
      link_to link_name, path
    end
  end
end
