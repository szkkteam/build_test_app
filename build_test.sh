#!/bin/sh

echo "------- Default tests -------"
echo "Testing build - [default]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [default/driver]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ driver 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [default/driver2]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ driver2 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "------- Explicit tests -------"
echo "Testing build - [release/debug]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ release debug 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [release/debug/driver]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/  release debug driver 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [release/debug/driver2]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ release debug driver2 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [release]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/  release  2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [release/driver]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ release driver 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [release/driver2]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ release driver2 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [debug/driver]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/ debug driver2 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi

echo "Testing build - [debug/driver2]"
BUILD_RESULT=$(python3 ../scons_utils/scons-3.0.4/scons.py --site-dir=../scons_utils/  debug driver2 2>&1 >/dev/null)
if [ -n "$BUILD_RESULT" ]
then
	echo "Error during build:"
	echo $BUILD_RESULT
	exit -1
else:
	echo "-- OK --"
	rm -rf out
fi