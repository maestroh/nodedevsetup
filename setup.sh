sudo apt-get install g++ curl libssl-dev apache2-utils
sudo apt-get install -y git-core
sudo apt-get remove make
sudo apt-get install make

cd $HOME

# setup node#
sudo apt-get update
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

# setup mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen
sudo echo 'smallfiles = true' >> /etc/mongod.conf
sudo service mongod start




