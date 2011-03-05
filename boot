#!/bin/bash
(compass watch guide/_ui/ &)
(cd guide; open -g index.html; filewatcher -i 0.2 "*.haml" "haml index.haml index.html && open -g index.html")