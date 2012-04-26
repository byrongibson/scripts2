#!/usr/bin/env bash

# set priority level
PRIORITY_LEVEL=1200

# install Oracle JDK6 alternative for update-alternatives --config java
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.6.0_30/bin/java $PRIORITY_LEVEL \
--slave /usr/bin/javac javac /usr/lib/jvm/jdk1.6.0_30/bin/javac \
--slave /usr/bin/javaws javaws /usr/lib/jvm/jdk1.6.0_30/bin/javaws \
--slave /usr/bin/jar jar /usr/lib/jvm/jdk1.6.0_30/bin/jar \
--slave /usr/bin/jexec jexec /usr/lib/jvm/jdk1.6.0_30/jre/lib/jexec \
--slave /usr/bin/keytool keytool /usr/lib/jvm/jdk1.6.0_30/jre/bin/keytool \
--slave /usr/share/man/man1/keytool.1.gz keytool.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/keytool.1 \
--slave /usr/bin/orbd orbd /usr/lib/jvm/jdk1.6.0_30/jre/bin/orbd \
--slave /usr/share/man/man1/orbd.1.gz orbd.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/orbd.1 \
--slave /usr/bin/pack200 pack200 /usr/lib/jvm/jdk1.6.0_30/jre/bin/pack200 \
--slave /usr/share/man/man1/pack200.1.gz pack200.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/pack200.1 \
--slave /usr/bin/policytool policytool /usr/lib/jvm/jdk1.6.0_30/jre/bin/policytool \
--slave /usr/share/man/man1/policytool.1.gz policytool.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/policytool.1 \
--slave /usr/bin/rmid rmid /usr/lib/jvm/jdk1.6.0_30/jre/bin/rmid \
--slave /usr/share/man/man1/rmid.1.gz rmid.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/rmid.1 \
--slave /usr/bin/rmiregistry rmiregistry /usr/lib/jvm/jdk1.6.0_30/jre/bin/rmiregistry \
--slave /usr/share/man/man1/rmiregistry.1.gz rmiregistry.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/rmiregistry.1 \
--slave /usr/bin/servertool servertool /usr/lib/jvm/jdk1.6.0_30/jre/bin/servertool \
--slave /usr/share/man/man1/servertool.1.gz servertool.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/servertool.1 \
--slave /usr/bin/tnameserv tnameserv /usr/lib/jvm/jdk1.6.0_30/jre/bin/tnameserv \
--slave /usr/share/man/man1/tnameserv.1.gz tnameserv.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/tnameserv.1 \
--slave /usr/bin/unpack200 unpack200 /usr/lib/jvm/jdk1.6.0_30/jre/bin/unpack200 \
--slave /usr/share/man/man1/unpack200.1.gz unpack200.1.gz /usr/lib/jvm/jdk1.6.0_30/man/man1/unpack200.1
