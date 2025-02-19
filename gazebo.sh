# Check if system have gazebo setup
if [ ! -f /usr/share/gazebo/setup.sh ]; then
	echo "/usr/share/gazebo/setup.sh do not exist, please install gazebo"
	exit 0
fi

# Unset variables
unset GAZEBO_MASTER_URI
unset GAZEBO_MODEL_DATABASE_URI
unset GAZEBO_RESOURCE_PATH
unset GAZEBO_PLUGIN_PATH
unset GAZEBO_MODEL_PATH
#unset LD_LIBRARY_PATH
unset OGRE_RESOURCE_PATH

# Load gazebo setup
source /usr/share/gazebo/setup.sh

# Update variables
export GAZEBO_MODEL_PATH=/home/kalvik/catkin_ws/src/ros_sitl/model:${GAZEBO_MODEL_PATH}
export GAZEBO_RESOURCE_PATH=/home/kalvik/catkin_ws/src/ros_sitl/worlds:${GAZEBO_RESOURCE_PATH}
