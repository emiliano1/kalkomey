module QuestionsHelper
  def markdown(text)
    render_options = {
        filter_html: true,
        hard_wrap: true,
        link_attributes: {rel: 'nofollow'}
    }
    renderer = HTML.new(render_options)

    extensions = {
        autolink: true,
        fenced_code_blocks: true,
        lax_spacing: true,
        no_intra_emphasis: true,
        strikethrough: true,
        superscript: true
    }
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text)
  end
end
