#!/usr/bin/sh

rg "^\- \[.*\]\(http.*\)" --no-filename --type markdown ~/zettelkasten/ |
  fzf |
  rg -o "http.*\)" |
  sd "\)" "" |
  xargs -I {} rg --line-number --no-heading --type markdown {} ~/zettelkasten/ |
  sd ":" " +" |
  sd "\+-.*" "" |
  xargs nvim