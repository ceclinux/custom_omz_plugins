An image and text paste bin service, especially for markdown users. The servers are based on https://github.com/Vim-cn/vinergy and https://github.com/Vim-cn/elimage

# Configuration

No Need. You can set up your own server based on github repo mentioned above. And don't forget to change UPLOAD_IMAGE_HOST and UPLOAD_TEXT_HOST

# How to use

```
upload_text cat ~/.zshrc
https://cfp.vim-cn.com/kkkkk

# fetch the file you upload, you can specify filename you want to save, xxx
fetch_text kkkkk
fetch_text kkkkk xxx

upload_image ttt.png
https://img.vim-cn.com/qqqqq

# fetch the file you upload, you can specify filename you want to save, xxxxxx
fetch_text qqqqq
fetch_text qqqqq xxxxxx
```
