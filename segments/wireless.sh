# wireless info

run_segment() {
	ssid=$(sudo iwconfig 2>/dev/null|grep wlan|awk -F 'ESSID:' '{ print $2 }'|sed s/'"'//g|sed s/' '//g)
	freq=$(sudo iwconfig 2>/dev/null|grep Freq|awk -F 'Frequency:' '{ print $2 }'|awk -F ' ' '{ print $1 $2 }')
	snr=$(sudo iwconfig 2>/dev/null|grep Link|awk -F '=' '{ print $2 }'|awk -F '/' '{ print $1 }')

	if [ -n $ssid ]
  	then
	  echo "$ssid ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN} $freq ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN} $snr""dbm"
	fi
        return 0
}
