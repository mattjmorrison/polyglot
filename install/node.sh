git clone git://github.com/joyent/node.git
cd node
git checkout v0.4.12
./configure
make -j2
sudo make install

echo 'export PATH=$PATH:/opt/node/bin' >> ~/.bash_profile

curl http://npmjs.org/install.sh | sh
