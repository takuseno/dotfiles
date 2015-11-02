augroup filetypedetect
  au BufRead,BufNewFile *.blade.php setfiletype blade
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.coffee setfiletype coffee
  au BufRead,BufNewFIle *.scss setfiletype scss
  au BufRead,BufNewFIle *.py setfiletype python
augroup END
