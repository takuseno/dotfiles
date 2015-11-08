augroup filetypedetect
  au BufRead,BufNewFile *.blade.php setfiletype blade
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.js setfiletype javascript
  au BufRead,BufNewFile *.coffee setfiletype coffee
  au BufRead,BufNewFile *.cjsx setfiletype cjsx
  au BufRead,BufNewFile *.html setfiletype html
  au BufRead,BufNewFIle *.scss setfiletype scss
  au BufRead,BufNewFIle *.py setfiletype python
augroup END
