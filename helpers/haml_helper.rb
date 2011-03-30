module HamlHelper
  def haml(path)
    path = path.to_s + ".haml"
    Haml::Engine.new(File.read(path)).render
  end
  
  def sec(text)
    @current_section ||= 0
    @current_section += 1
    @current_subsection = 0
    "<h2>#{@current_section}. #{text}</h2>"
  end
  
  def subsec(text)
    @current_subsection += 1
    "<h3>#{@current_section}.#{@current_subsection}. #{text}</h3>"
  end
  
  def zoomable(image)
    "<div class='side-content'>
      <a href='#{image}' class='zoomable'><img src='#{image}' /></a>
      <p class='caption'> Click to view full-size</p>
    </div>"
  end
  
  def amazon_link(text, asin, title = nil)
    title = text unless title
    "<a href='http://www.amazon.com/exec/obidos/ASIN/#{asin}/aflyingmachin-20/ref=nosim/' title='#{title}'>#{text}</a>"
  end
  
  def amazon_image(text, asin, image_name)
    amazon_link("<img src='_media/images/amazon/#{image_name}' alt='#{text}' />", asin, text)
  end
end