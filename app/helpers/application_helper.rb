module ApplicationHelper
  def suppress_header?
    @suppress_header
  end

  def homepage?
    @homepage
  end

  def selected_link_to(text = nil, link = nil, options = nil, &block)
    if block_given?
      options = link
      link = text
      text = nil
    end
    options ||= {}

    selected = (current_page?(link) || current_page?("#{link}/") || @selected_link == link)

    if selected
      options[:class] = "selected #{options[:class]}"
    else
      options[:class] = options[:class]
    end

    if block_given?
      link_to(capture(&block), link, options)
    else
      link_to(text, link, options)
    end
  end
end
