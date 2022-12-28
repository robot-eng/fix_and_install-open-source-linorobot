<h1><b>study_linorobot</b></h1>
<h2>install ros in jetson nano</h2>
web======><a href="https://wiki.ros.org/melodic/Installation/Ubuntu">https://wiki.ros.org/melodic/Installation/Ubuntu</a>
<pre><code>1. sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'</code></pre>
<pre><code>2.sudo apt install curl</code></pre>
<pre><code>3.curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -</code></pre>
<pre><code>4.sudo apt update</code></pre>
<pre><code>5.sudo apt install ros-melodic-desktop-full</code></pre>
<p>sudo apt install ros-melodic-PACKAGE ตัวอย่างติดตั้ง เเพ็คเก็ค</p>
<pre><code>6.echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc</code></pre>
<pre><code>7.source ~/.bashrc</code></pre>
<p>Dependencies for building packages</p>
<pre><code>8.sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential</code></pre>
<pre><code>9.sudo apt install python-rosdep</code></pre>
<pre><code>10.sudo rosdep init </code></pre>
<pre><code>11.rosdep update</code></pre>
<pre><code>12.sudo apt-get install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev python-rosinstall python-rosinstall-generator python-wstool build-essential git</code></pre>
<h2>Configure a catkin workspace</h2>
<pre><code>1.mkdir -p ~/catkin_ws/src</code></pre>
<pre><code>2.cd ~/catkin_ws/</code></pre>
<pre><code>3.catkin_make</code></pre>
<pre><code>4.echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc</code></pre>
<pre><code>5.source ~/.bashrc</code></pre>
<h2>Example install package workspace </h2>
<pre><code>1.cd ~/catkin_ws/src</code></pre>
<pre><code>2.git clone ......</code></pre>
<pre><code>3.cd ~/catkin_ws</code></pre>
<pre><code>4.1. catkin_make -DCMAKE_BUILD_TYPE=Release</code></pre>
<pre><code>4.2. source ./devel/setup.bash</code></pre>
<pre><code>6.roslaunch ...._rviz ......launch</code></pre>

<h2>linorobot for ubuntu 18.04 ros melodic</h2>
<p>web===><a href="https://linorobot.org/getting-started/">https://linorobot.org/getting-started/</a><p></p><a href=https://github.com/linorobot/linorobot>https://github.com/linorobot/linorobot</a></p>
<pre><code>1.cd </code></pre>
<pre><code>2.git clone https://github.com/linorobot/lino_install</code></pre>
<h2>install platformio </h2>
<pre><code> 3. python3 -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/master/scripts/get-platformio.py)"</code></pre>

<h2>4. # add links to the executables</h2>
<p>3 types</p>
<pre><code> 4.1 ln -s ~/.platformio/penv/bin/platformio ~/.local/bin/platformio</code></pre>
<pre><code> 4.2 ln -s ~/.platformio/penv/bin/pio ~/.local/bin/pio</code></pre>
<pre><code> 4.3 ln -s ~/.platformio/penv/bin/piodebuggdb ~/.local/bin/piodebuggdb</code></pre>
<p>###https://calinradoni.github.io/pages/210403-platformiocli.html</p>
<pre><code>5. echo "export PATH=$PATH:/place/with/the/file" >> ~/.bashrc</code></pre>
<pre><code>6. source ~/bashrc</code></pre>
<pre><code>7. cd lino_install</code></pre>
<pre><code>8. git checkout melodic</code></pre>
<h2>fix file install.sh in lino_install command:</h2>
<pre><code>9 cd lino_install</code></pre>
 <pre><code>9.1 nano install.sh </code></pre>
 <pre><code>9.2 --(https://github.com/robot-eng/robot_install)</code></pre>
 <pre><code># sudo python2.7 -m pip install -U platformio
# sudo rm -rf $HOME/.platformio/</code></pre>
<pre><code>10. ./install base sensor  ## see install in https://github.com/linorobot/linorobot/wiki/1.-Getting-Started
example: ./install 2wd xv11</code></pre>
<pre><code>11. cd</code></pre>
<pre><code>12.echo "source ~/linorobot_ws/devel/setup.bash" >> ~/.bashrc</code></pre>
<pre><code>13.source ~/bashrc</code></pre>
<h2>install gudev======>https://github.com/nzjrs/python-gudev</h2>
<pre><code>14. cd </code></pre>
<pre><code>15. git clone https://github.com/nzjrs/python-gudev</code></pre>
<pre><code>15. cd</code></pre>
<pre><code>15.1. sudo apt install libtool-bin</code></pre>
<pre><code>15.2. sudo apt install python-gobject-1-dev</code></pre>
<pre><code>15.3. sudo apt-get install libgudev-1.0-dev</code></pre>
<pre><code>15.4. ./autogen.sh</code></pre>
<pre><code>15.5. make</code></pre>
<pre><code>15.6. sudo make install	</code></pre>
<h2>warning if your don't have module glib will install this and run ./autogen.sh show warning </h2>
<pre><code>1. sudo apt-get install python-gtk2</code></pre>
<pre><code>2. sudo apt-get install --reinstall python-dbus</code></pre>
<hr> 
<h2>------> MASTER </h2>
<p>install in MASTER</p>
<pre><code>1. cd ~/catkin_ws/src</code></pre>
<pre><code>2. git clone https://github.com/linorobot/lino_pid.git</code></pre>
<pre><code>3. git clone https://github.com/linorobot/lino_msgs.git</code></pre>
<pre><code>4. git clone https://github.com/linorobot/lino_visualize.git</code></pre>
<pre><code>5. sudo apt-get install ros-$(rosversion -d)-teleop-twist-keyboard</code></pre>
<pre><code>6. cd .. && catkin_make</code></pre>
<pre><code>7. echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc</code></pre>
<pre><code>8. source ~/.bashrc</code></pre>

<h2>----> Network Setup </h2>
<p>First, find out the ip-address of your robot's computer and development computer:</p>
<pre><code>1. ifconfig</code></pre>

<h2>-----> Robot's computer: </h2>3DEFEFEF

<pre><code>1. echo "export ROS_MASTER_URI=http://<MASTER-ip>:11311" >> ~/.bashrc</code></pre>
<pre><code>2. echo "export ROS_HOSTNAME=<robot-ip>" >> ~/.bashrc</code></pre>

<h2>-----> Development computer: </h2>

<pre><code>1. echo "export ROS_MASTER_URI=http://<MASTER-ip>:11311" >> ~/.bashrc</code></pre>
<pre><code>2. echo "export ROS_HOSTNAME=<MASTER-ip>" >> ~/.bashrc</code></pre>

<h2>-----> uDev Rules</h2>

<pre><code>1. rosrun lino_udev lino_udev.py</code></pre>
<p>
Plug in the Teensy board and key in "linobase". Do the same thing for the lidar and 
name it as "linolidar". Save your uDev rules by pressing CTRL+C
<p>
<pre><code>2. sudo cp 58-lino.rules /etc/udev/rules.d/58-lino.rules</code></pre>
<pre><code>3. sudo service udev reload</code></pre>
<pre><code>4. sudo service udev restart</code></pre>
<p>
(check) Confirm if the uDev rules worked:
</p>
<pre><code>5. ls /dev/linobase</code></pre>
<pre><code>6. ls /dev/linolidar</code></pre>

<h2>Uploading the firmware </h2>
<p>
Before uploading the codes, identify and define your robot’s specification in the config file.
On your robot’s computer, open and edit the lino_base_config.h:</p>

<pre><code>1. roscd linorobot/teensy/firmware/lib/config</code></pre>
<pre><code>2. nano lino_base_config.h</code></pre>
<p>
<h3>modify:</h3> <u><li>1. only one firmware for all the supported robot base so you have to define which one you're building
           (DIFFERENTIAL_DRIVE(2WD), SKID_STEER(4WD), ACKERMANN(Car-like steering robot w/ 2 motors), 
            ACKERMANN1(Car-like steering robot w/ 1 motor), MECANUM(Mecanum drive robot)</li>
        <li>2. Motor Driver (L298N, BTS7960, ESC, ...)</li>
        <li>3. IMU (GY-85, MPU6050, MPU9150, MPU9250)</li>
        <li>4. Value define your robot's specification:</li>
<h3>and save</h3>
<p>
<pre><code>3. roscd linorobot/teensy/firmware</code></pre>
<pre><code>4. platformio run --target upload -e teensyXX</code></pre>
<h3>
where teensyXX is the Teensy board that you are using. Available options:</h3>
<li> teensy31</li>
<li> teensy32</li>
<li> teensy35</li>
<li> teensy36</li>
<li> teensy40</li>
<li> teensy41</li>
<h3>
(If are using MPU6050 IMU,  remember to set use_mag param on imu_madgwick_filter to false in file imu.launch</h3>
<pre><code>1. roscd linorobot/launch/include/imu</code></pre>
<pre><code>2. nano imu.launch)</code></pre>

<h2>----> calibration</h2>

<p>Open a new terminal and run minimal.launch:</p>

<pre><code>1. roslaunch linorobot minimal.launch</code></pre>

<p>On another terminal, run the IMU calibration node:</p>

<pre><code>2. roscd linorobot/param/imu</code></pre>
<pre><code>3. mv imu_calib.yaml imu_calib0.yaml </code></pre>
<pre><code>4. rosrun imu_calib do_calib</code></pre>
<p>Warning! : calibration will working, when have not file imu_calib.yaml therefore have to do mv(move)</p>
<p>("Follow the instructions on the terminal until the calibration process is done. It's normal that each step would 
take some time so don't terminate the program. Once done, verify if the calibration file has been saved.")</p>

<pre><code>5. ls imu_calib.yaml</code></pre>
