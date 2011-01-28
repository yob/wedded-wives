module ApplicationHelper
  def javascripts
    @javascripts.uniq.collect { |script|
      javascript_include_tag(script.to_s)
    }.join.html_safe
  end

  def stylesheets
    @stylesheets.map { |name|
      stylesheet_link_tag(name)
    }.join.html_safe
  end

  def active_if_current(path)
    current_page?(path) ? "active" : nil
  end
end
