# fangtang command
# example: fangtang du, notify user after finishing running command du
function_name fangtang() {
  PREV_TIME=$(date +%s)
  $@
  if [ $? -eq 0 ]
  then
    STATUS_MESSAGE="it worked"
  else
    STATUS_MESSAGE="it failed"
  fi
  CURR_TIME=$(date +%s)
  TIME_DIFF=$(( $CURR_TIME - $PREV_TIME ))
  DESP="desp=""**[$STATUS_MESSAGE]** ""$@"
  TEXT="text=一共跑了""$TIME_DIFF""秒"
  curl  -G -s /dev/null  "https://sc.ftqq.com/""$SCKEY"".send" --data-urlencode $DESP --data-urlencode $TEXT
}
