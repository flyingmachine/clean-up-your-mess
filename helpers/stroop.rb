require 'rubygems'
require 'extensions/array'

colors = %w{red green blue orange yellow purple}
html = ""

words_used = []
classnames_used = []

80.times do 
  classname = (colors - classnames_used).rand
  classnames_used << classname
  classnames_used = [] if classnames_used.size == colors.size
  
  if colors.size - words_used.size == 1 && (colors - words_used == [classname])
    words_used = classnames_used = []
    next
  end
  
  word = (colors - words_used).rand
  while word == classname
    word = (colors - words_used).rand
  end
  words_used << word
  words_used = [] if words_used.size == colors.size
  
  html << "<span class=\"#{classname}\">#{word}</span> "
end

puts html