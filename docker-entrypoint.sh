#! /bin/sh
if $VM_DEBUG; then
    JAVA_OPTS="$JAVA_OPTS -XX:+PrintGCDetails"
fi
java \
    -Dcom.sun.management.jmxremote=true \
    -Dcom.sun.management.jmxremote.authenticate=false \
    -Dcom.sun.management.jmxremote.ssl=false \
    -Dcom.sun.management.jmxremote.local.only=false \
    -Dcom.sun.management.jmxremote.port=$JMX_PORT \
    -Dcom.sun.management.jmxremote.rmi.port=$JMX_PORT \
    -Xms$MEMORY_MIN \
    -Xmx$MEMORY_MAX \
    -XX:+$GC_TYPE \
    -Dspring.profiles.active=$PROFILES \
    -Dserver.port=$SERVER_PORT \
    $JAVA_OPTS -jar app.jar
    