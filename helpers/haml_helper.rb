module HamlHelper
  def haml(path)
    path = path.to_s + ".haml"
    Haml::Engine.new(File.read(path)).render
  end
end