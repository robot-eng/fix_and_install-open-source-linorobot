cd $HOME
git clone https://github.com/linorobot/lino_install
cd lino_install 
sudo rm -rf install
cp $HOME/robot_install/fix/install $HOME/lino_install/

echo "Go at $HOME/lino_install/install.sh"
echo "Then run ./install <base> <sensor>"
echo
echo "base The type of robot you want to build. Valid arguments are"
echo " - 2wd"
echo " - 4wd"
echo " - ackermann"
echo " - mecanum"
echo "---------------------------------------------------------------"
echo "The lidar you're going to use for your build. Valid arguments are"
echo " - xv11"
echo " - rplidar"
echo " - ydlidar"
echo " - ydlidarx2"
echo " - hokuyo"
echo " - kinect"
echo " - realsense"
echo
