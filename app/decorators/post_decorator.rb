module PostDecorator
  def first_iframe
    case youtube_url
    when /youtu\.be/
      first_url.sub!('https://youtu.be/','https://www.youtube.com/embed/')
      %(<iframe width="861" height="484" src="#{first_url}" frameborder="0" gesture="media" allowfullscreen></iframe>).html_safe
    when /youtube\.com/
      %(<iframe width="861" height="484" src="#{first_url}" frameborder="0" gesture="media" allowfullscreen></iframe>).html_safe
    end
  end
end
