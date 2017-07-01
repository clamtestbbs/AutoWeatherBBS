#!/bin/sh

case "$1" in

day)
    echo '(no information)' > /home/bbs/etc/weather.post
    /usr/bin/python3 /home/bbs/bin/weatherBIG5.py
    /home/bbs/bin/post 'Record' '���O����U�a�դѤѮ�' '[��H���i]' /home/bbs/etc/weather.post
    ;;

night)
    echo '(no information)' > /home/bbs/etc/weather.post
    /usr/bin/python3 /home/bbs/bin/weatherBIG5.py
    /home/bbs/bin/post 'Record' '���O����U�a�ߤW�Ѯ�' '[��H���i]' /home/bbs/etc/weather.post
    ;;

*)
    echo "Usage ${0} {day|night}"
    ;;

esac

exit 0

## Note: usage for bin/post: /home/bbs/bin/post <board name> <title> <owner> <file>
