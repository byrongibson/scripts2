#!/usr/bin/env bash

# set priority level
PRIORITY_LEVEL=1200

# install Oracle JDK7 as alternative for update-alternatives --config java
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.7.0_02/bin/java $PRIORITY_LEVEL

# the following can't be a slave to java, must install separately
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.7.0_02/bin/javac $PRIORITY_LEVEL
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk1.7.0_02/bin/javaws $PRIORITY_LEVEL
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk1.7.0_02/bin/jar $PRIORITY_LEVEL
sudo update-alternatives --install /usr/bin/jexec jexec /usr/lib/jvm/jdk1.7.0_02/jre/lib/jexec $PRIORITY_LEVEL
sudo update-alternatives --install /usr/bin/keytool keytool /usr/lib/jvm/jdk1.7.0_02/jre/bin/keytool $PRIORITY_LEVEL \
--slave /usr/share/man/man1/keytool.1.gz keytool.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/keytool.1 
sudo update-alternatives --install /usr/bin/orbd orbd /usr/lib/jvm/jdk1.7.0_02/jre/bin/orbd $PRIORITY_LEVEL \
--slave /usr/share/man/man1/orbd.1.gz orbd.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/orbd.1 
sudo update-alternatives --install /usr/bin/pack200 pack200 /usr/lib/jvm/jdk1.7.0_02/jre/bin/pack200 $PRIORITY_LEVEL \
--slave /usr/share/man/man1/pack200.1.gz pack200.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/pack200.1 
sudo update-alternatives --install /usr/bin/policytool policytool /usr/lib/jvm/jdk1.7.0_02/jre/bin/policytool $PRIORITY_LEVEL \
--slave /usr/share/man/man1/policytool.1.gz policytool.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/policytool.1 
sudo update-alternatives --install /usr/bin/rmid rmid /usr/lib/jvm/jdk1.7.0_02/jre/bin/rmid $PRIORITY_LEVEL \
--slave /usr/share/man/man1/rmid.1.gz rmid.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/rmid.1 
sudo update-alternatives --install /usr/bin/rmiregistry rmiregistry /usr/lib/jvm/jdk1.7.0_02/jre/bin/rmiregistry $PRIORITY_LEVEL \
--slave /usr/share/man/man1/rmiregistry.1.gz rmiregistry.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/rmiregistry.1 
sudo update-alternatives --install /usr/bin/servertool servertool /usr/lib/jvm/jdk1.7.0_02/jre/bin/servertool $PRIORITY_LEVEL \
--slave /usr/share/man/man1/servertool.1.gz servertool.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/servertool.1 
sudo update-alternatives --install /usr/bin/tnameserv tnameserv /usr/lib/jvm/jdk1.7.0_02/jre/bin/tnameserv $PRIORITY_LEVEL \
--slave /usr/share/man/man1/tnameserv.1.gz tnameserv.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/tnameserv.1 
sudo update-alternatives --install /usr/bin/unpack200 unpack200 /usr/lib/jvm/jdk1.7.0_02/jre/bin/unpack200 $PRIORITY_LEVEL \
--slave /usr/share/man/man1/unpack200.1.gz unpack200.1.gz /usr/lib/jvm/jdk1.7.0_02/man/man1/unpack200.1 

