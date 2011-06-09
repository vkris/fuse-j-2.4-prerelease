#!/bin/sh

#
# This is a multi-threaded variant.

# Usage: ./zipfs_mount_mt.sh file.zip /mount/point

. ./build.conf

LD_LIBRARY_PATH=./jni:$FUSE_HOME/lib $JDK_HOME/bin/java \
   -classpath ./build:./lib/commons-logging-1.0.4.jar \
   -Dorg.apache.commons.logging.Log=fuse.logging.FuseLog \
   -Dfuse.logging.level=INFO \
   fuse.zipfs.ZipFilesystem -f $2 $1
