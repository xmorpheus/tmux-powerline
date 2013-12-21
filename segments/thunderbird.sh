# requires thunderbird unread extension

run_segment() {
	mail=$(cat .thunderbird/3nimq4mw.default/unread-counts|awk -F ':' '{ print $1 }'|tr '\n' '+')
	mail=$(echo "$mail""0"|bc)
	
	echo "Mail: $mail"
        return 0
}
