#!/bin/sh

case "$1" in

day)
    echo '(no information)' > /home/bbs/etc/weather.post
    /usr/bin/python3 /home/bbs/bin/weatherBIG5.py
    /home/bbs/bin/addpost 'SYSTEM' 'SYSOP' '�ڤ����F' "[�O��] [ `date +%-0m` �� `date +%-0d` ��] ���O����U�a�դѤѮ�" etc/weather.post
    ;;

night)
    echo '(no information)' > /home/bbs/etc/weather.post
    /usr/bin/python3 /home/bbs/bin/weatherBIG5.py
    /home/bbs/bin/addpost 'SYSTEM' 'SYSOP' '�ڤ����F' "[�O��] [ `date +%-0m` �� `date +%-0d` ��] ���O����U�a�ߤW�Ѯ�" etc/weather.post
    ;;

*)
    echo "Usage ${0} {day|night}"
    ;;

esac

exit 0

