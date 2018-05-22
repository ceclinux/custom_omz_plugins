function_name upload_image() {
  curl -F "name=@$1" https://img.vim-cn.com/
}

function_name upload_text() {
    $@ | curl -F 'vimcn=<-' https://cfp.vim-cn.com/
}
