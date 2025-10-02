#!/system/bin/sh
stop adbd
setprop service.adb.tcp.port 5555
magisk --sqlite "INSERT OR REPLACE INTO policies (uid, policy, until, logging, notification) VALUES (2000, 2, 0, 1, 0)"
start adbd