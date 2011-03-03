#!/bin/bash
(compass watch guide/_ui/ &)
(cd guide; filewatcher -i 0.2 "*.haml" "haml index.haml index.html && open -g index.html")