sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install fontconfig-config fonts-dejavu-core libfontconfig1 mosquitto mosquitto-clients -y
sudo apt-get install python3-pip -y
sudo pip3 install paho-mqtt
sudo systemctl start mosquitto
curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -
echo "deb https://repos.influxdata.com/debian stretch stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt update
sudo apt install influxdb
sudo python3 -m pip install influxdb
sudo systemctl enable influxdb
sudo systemctl enable mosquitto
sudo systemctl start influxdb
wget https://dl.grafana.com/oss/release/grafana_6.4.2_armhf.deb
sudo dpkg -i grafana_6.4.2_armhf.deb
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable grafana-server
