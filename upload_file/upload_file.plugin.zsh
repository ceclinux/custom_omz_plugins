UPLOAD_IMAGE_HOST="https://img.vim-cn.com/"
UPLOAD_TEXT_HOST="https://cfp.vim-cn.com/"

function_name upload_image() {
  curl -F "name=@$1" $UPLOAD_IMAGE_HOST
}

function_name upload_text() {
  $@ | curl -F 'vimcn=<-' $UPLOAD_TEXT_HOST
}

function_name fetch_image() {
  if [ -z "$2" ]; then
    wget "$UPLOAD_IMAGE_HOST""$1"
  else
    wget "$UPLOAD_IMAGE_HOST""$1" -O "$2"
  fi
}

function_name fetch_text() {
  if [ -z "$2" ]; then
    wget "$UPLOAD_TEXT_HOST""$1"
  else
    wget "$UPLOAD_TEXT_HOST""$1" -O "$2"
  fi
}
