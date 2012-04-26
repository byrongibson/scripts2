https://groups.google.com/forum/?fromgroups#!topic/liftweb/503eibvCvV4

naftoligug@disp:~$ cat /etc/init/lrbcol.conf 
exec start-stop-daemon -c jetty -x /home/naftoligug/jrockit-jdk1.6.0_29-R28.1.5-4.0.1/jre/bin/java -S -- -cp /usr/share/java/commons-daemon.jar:/usr/share/jetty/start.jar:/usr/share/jetty/start-daemon.jar:/home/naftoligug/jrockit-jdk1.6.0_29-R28.1.5-4.0.1/lib/tools.jar -Xmx256m -Djava.awt.headless=true -Drun.mode=production -Djava.io.tmpdir=/var/cache/jetty/data -Djava.library.path=/usr/lib -DSTART=/etc/jetty/start.config -Djetty.home=/usr/share/jetty -Djetty.logs=/var/log/jetty -Djetty.host= -Djetty.port=8080 org.mortbay.start.Main /etc/jetty/jetty-logging.xml /etc/jetty/jetty.xml
start on runlevel [2345]
