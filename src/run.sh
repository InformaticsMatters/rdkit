#!/bin/bash

export CLASSPATH=.:$RDBASE/Code/JavaWrappers/gmwrapper/org.RDKit.jar
export LD_LIBRARY_PATH=$RDBASE/lib:$RDBASE/Code/JavaWrappers/gmwrapper

javac foo/Example1.java
java foo/Example1
