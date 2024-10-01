#!/usr/bin/sh

rg "\\- \\[.*\\]\\(http.*\\)" --no-filename --type markdown ~/zettelkasten |
  fuzzel --dmenu |
  rg -o "http.*\\)" |
  sd "\\)" "" |
  xargs -r xdg-open
