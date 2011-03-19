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
end