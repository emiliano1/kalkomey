module ApplicationHelper
  def header_link_to(label, url)
    klass = current_page?(url) ? 'active' : ''
    content_tag :li, class: klass do
      link_to(label, url)
    end
  end
end
