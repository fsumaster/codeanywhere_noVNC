#!/bin/bash
#codeanywhere novnc via browser
#fsumaster
sudo -i apt install vnc4server x11vnc xfce4 xfce4-goodies nano firefox gedit -y
cat << EOF > runner.sh
#!/bin/bash
cd noVNC
vncserver -geometry 1920x1080
./utils/novnc_proxy --vnc localhost:5901 --listen localhost:6081
echo 'Be respectful'
EOF
chmod +x runner.sh
git clone https://github.com/novnc/noVNC
sleep 1
./runner.sh
exit
