#!/bin/bash
(compass watch guide/_ui/ &)
open -g guide/public/index.html
compile --watch