# ros_sitl

Gazebo model of DeepBlue AUV.

## Setup
* Install ROS Kinetic's  Desktop Install following this [tutorial](http://wiki.ros.org/kinetic/Installation/Ubuntu)
* Download and setup ArduPilot for sitl following this [tutorial](http://ardupilot.org/dev/docs/setting-up-sitl-on-linux.html)
* Install [freebuoyancy_gazebo](https://github.com/bluerobotics/freebuoyancy_gazebo#install)
* Install [ardupilopt_gazebo/add_link](https://github.com/patrickelectric/ardupilot_gazebo/tree/add_link#usage-)
* Checkout add_link branch in ardupilot_gazebo with ```git checkout add_link```
* Clone ros_sitl and run gazebo
```
git clone git@bitbucket.org:WSU_DeepBlue/ros_sitl.git
cd ros_sitl
source gazebo.sh
gazebo worlds/underwater.world
```
* Start ardusub sitl in another terminal
```
cd ardupilot/ArduSub
sim_vehicle.py -f gazebo-bluerov2 -I 0 -j4 -D -L RATBeach --console
```
* Use QGroundControl to control the ROV in gazebo. Just run QGroundControl and it will connect to sitl. 



