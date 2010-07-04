require 'rubygems'
require 'extensions/array'

colors = %w{red green blue orange yellow purple}
html = ""

80.times do 
  word = classname = colors.rand
  until word != classname
    word = colors.rand
  end
  html << "<span class=\"#{classname}\">#{word}</span> "
end

puts html