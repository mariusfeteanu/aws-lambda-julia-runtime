function handler () {
  # EVENT_DATA=$1
  # echo "$EVENT_DATA" 1>&2;
  # RESPONSE="Echoing request: '$EVENT_DATA'"
  RESPONSE=`/tmp/julia-1.2.0/bin/julia -e 'println(10+10)'`

  echo $RESPONSE
}
