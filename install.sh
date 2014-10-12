echo "
Tell yum to use the fastest mirror available
"
sudo yum -y install yum-fastestmirror

echo "
Installing Git
"
sudo yum install git -y

echo "
Installing Nano
"
sudo yum install nano -y

echo "
Installing PHP
"
sudo yum install php -y

echo "
Copying startup script
"
mkdir /home/vagrant/bin
cp /vagrant/serve.py /home/vagrant/bin/jquery
chmod 700 /home/vagrant/bin/jquery
chown vagrant:vagrant /home/vagrant/bin/ -R
