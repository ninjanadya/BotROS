# CREATE PACKAGES
catkin_create_pkg <package_name> [depend1] [depend2] [depend3]

# CREATE WORKSPACE
source /opt/ros/noetic/setup.bash
cd /PATH_TO_DIR
mkdir -p ~/WORKSPACE_NAME/src
cd WORKSPACE_NAME
catkin_make

# PACKAGE NOTES
	- packages are added to src folder of WORKSPACE

# LAUNCH PACKAGE
roslaunch <package_name> <name_of_launch_file>

# STARTUP SEQUENCE FOR TURTLE BOT
roslaunch faketurtlebot3 faketurtlebot3.launch

# HOW TO GIVE TURTLE BOT INSTRUCTIONS
TODO: Experiment and googling required.

# PYTHON SCRIPT FOR TRAVELING IN STRAIGHT LINE
TODO: Likely involves so review of slides, googling, and experimenting.

# PYTHON SCRIPT FOR TRAVELING IN CIRCLE
TODO: Expanding on previous script for more complex path.

# PYTHON SCRIPT FOR TRAVELING ALONG AN INPUT PATH
TODO: Expanding on previous script, adding user input and general path input.