# ros_sitl

Gazebo model of DeepBlue AUV.

## Setup
* Install ROS Kinetic's  Desktop Install following this [tutorial](http://wiki.ros.org/kinetic/Installation/Ubuntu)
* Download and setup [ArduPilot](git@bitbucket.org:WSU_DeepBlue/ardupilot.git)
* Install [freebuoyancy_gazebo](git@bitbucket.org:WSU_DeepBlue/freebuoyancy_gazebo.git)
* Install [ardupilopt_gazebo/add_link](git@bitbucket.org:WSU_DeepBlue/ardupilot_gazebo.git)
* Clone ros_sitl and start roscore
```
git clone git@bitbucket.org:WSU_DeepBlue/ros_sitl.git
cd ros_sitl
source gazebo.sh
roscore
```
In another terminal start gazebo
```
rosrun gazebo_ros gazebo --verbose worlds/underwater.world
```
* Start ardusub sitl in another terminal
```
cd ardupilot/ArduSub
sim_vehicle.py -f gazebo-bluerov2 -I 0 -j4 -D -L RATBeach --console
```
* Use QGroundControl to control the ROV in gazebo. Just run QGroundControl and it will connect to sitl. 



