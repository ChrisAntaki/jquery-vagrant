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
mkdir ~/bin
cp /vagrant/serve.py ~/bin/jquery
chmod 700 ~/bin/jquery

echo "
Cloning jQuery
"
git clone https://github.com/jquery/jquery.git /vagrant/jquery
