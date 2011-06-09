#!/bin/sh

# Usage: ./zipfs_mount.sh file.zip /mount/point

. ./build.conf

LD_LIBRARY_PATH=./jni:$FUSE_HOME/lib $JDK_HOME/bin/java \
   -classpath ./build:./lib/commons-logging-1.0.4.jar \
   -Dorg.apache.commons.logging.Log=fuse.logging.FuseLog \
   -Dfuse.logging.level=DEBUG \
   fuse.zipfs.ZipFilesystem -f -s $2 $1
