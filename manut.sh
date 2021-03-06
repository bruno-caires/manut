#!bin/bash
### BEGIN INIT INFO
# Provides:          scriptname
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO


# /etc/init.d/example
 
case "$1" in
  start)
    echo "Starting manut"
    # run application you want to start
    python /opt/manut/client.py &
    ;;
  stop)
    echo "Stopping manut"
    # kill application you want to stop
    killall manut
    ;;
  *)
    echo "Usage: /etc/init.d/manut.sh{start|stop}"
    exit 1
    ;;
esac
 
exit 0
