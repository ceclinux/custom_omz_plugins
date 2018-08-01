# fangtang command
# example: fangtang du, notify user after finishing running command du
function_name fangtang() {
  PREV_TIME=$(date +%s)
  $@
  CURR_TIME=$(date +%s)
  TIME_DIFF=$(( $CURR_TIME - $PREV_TIME ))
  curl "https://sc.ftqq.com/""$SCKEY"".send\?desp\=""$@""&text=""一共跑了""$TIME_DIFF"""秒"\~"
}
