# ros_sitl

Gazebo model of DeepBlue AUV.

## Setup
* Install ROS Kinetic's Desktop Install following this [tutorial](http://wiki.ros.org/kinetic/Installation/Ubuntu)
* Create ROS workspace following this [tutorial](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)
* Install Gazebo 7 following this [tutorial](http://gazebosim.org/tutorials?tut=install_ubuntu) follow Alternative installation and replace ```sudo apt-get install gazebo8``` with ```sudo apt-get install gazebo7 libgazebo7-dev```
* Download and setup [ArduPilot](git@bitbucket.org:WSU_DeepBlue/ardupilot.git)
* Install [freebuoyancy_gazebo](git@bitbucket.org:WSU_DeepBlue/freebuoyancy_gazebo.git)
* Install [ardupilopt_gazebo/add_link](git@bitbucket.org:WSU_DeepBlue/ardupilot_gazebo.git)
* Clone ros_sitl and start roscore
```
cd catkin_ws/src
git clone git@bitbucket.org:WSU_DeepBlue/ros_sitl.git
cd ~/catkin_ws
catkin_make
```

## Usage
In a terminal start gazebo
=======
* In another terminal start gazebo
```
cd catkin_ws/src/ros_sitl
source gazebo.sh
roslaunch ros_sitl gazebo_sitl.launch
```
* Start ardusub sitl in another terminal
```
cd ardupilot/ArduSub
sim_vehicle.py -f gazebo-bluerov2 -I 0 -j4 -D -L RATBeach --console
```
* Use QGroundControl to control the ROV in gazebo. Just run QGroundControl and it will connect to sitl. 



