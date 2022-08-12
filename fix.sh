cd $HOME
git clone https://github.com/linorobot/lino_install
cd lino_install 
sudo rm -rf install
cp $HOME/robot_install/fix/install.sh $HOME/lino_install/

echo "Go at $HOME/lino_install/install.sh"
echo "Then run ./install <base> <sensor>"
