# ros_sitl

Gazebo model of DeepBlue AUV.

## Setup
* Install ROS Kinetic's Desktop Install following this [tutorial](http://wiki.ros.org/kinetic/Installation/Ubuntu)
* Create ROS workspace following this [tutorial](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)
* Download [ArduPilot](https://github.com/kdkalvik/ardupilot) and setup the [Linux sitl](http://ardupilot.org/dev/docs/setting-up-sitl-on-linux.html)
* Install [freebuoyancy_gazebo plugin](https://github.com/kdkalvik/freebuoyancy_gazebo)
* Install [ardupilopt_gazebo plugin](https://github.com/kdkalvik/ardupilot_gazebo)
* Clone ros_sitl and start roscore

```
cd catkin_ws/src
git clone https://github.com/kdkalvik/ros_sitl
cd ~/catkin_ws
catkin_make
```

## Usage
* start gazebo in a terminal
```
cd catkin_ws/src/ros_sitl
source gazebo.sh
roslaunch ros_sitl gazebo_sitl.launch
```
* Start ardusub sitl in another terminal
```
cd ~/ardupilot/ArduSub
sim_vehicle.py -f gazebo-bluerov2 -I 0 -j4 -D
```
* Use QGroundControl to control the ROV in gazebo. Just run QGroundControl and it will connect to sitl. 



