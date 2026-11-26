#!/bin/bash
for a in "$@"; do case "$a" in --gradle-version=*) v="${a#*=}";; esac; done
[ -n "$v" ] && echo "distributionUrl=https\://services.gradle.org/distributions/gradle-$v-bin.zip" > gradle/wrapper/gradle-wrapper.properties
exit 0
