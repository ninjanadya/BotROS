#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/src/DynamixelSDK/ros/dynamixel_sdk"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/install/lib/python3/dist-packages:/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/build" \
    "/usr/bin/python3" \
    "/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/src/DynamixelSDK/ros/dynamixel_sdk/setup.py" \
     \
    build --build-base "/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/build/DynamixelSDK/ros/dynamixel_sdk" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/install" --install-scripts="/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/install/bin"
