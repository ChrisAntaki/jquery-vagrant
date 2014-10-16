echo "
Tell yum to use the fastest mirror available
"
sudo yum -y install yum-fastestmirror

echo "
Git
"
sudo yum install git -y

echo "
Nano
"
sudo yum install nano -y

echo "
PHP
"
sudo yum install php php-dom php-gd php-fpm php-mbstring php-mysql -y
sudo sed -i 's:;cgi.fix_pathinfo=1:cgi.fix_pathinfo=0:g' /etc/php.ini
sudo sed -i 's%listen = 127.0.0.1:9000%listen = /var/run/php-fpm/php-fpm.sock%g' /etc/php-fpm.d/www.conf
sudo sed -i 's%short_open_tag = Off%short_open_tag = On%g' /etc/php.ini
sudo systemctl enable php-fpm.service
sudo systemctl start php-fpm

echo "
EPEL
"
sudo yum install epel-release -y

echo "
nginx
"
sudo yum install nginx -y
sudo cp /vagrant/install/nginx.conf /etc/nginx/
sudo systemctl enable nginx.service
sudo systemctl start nginx.service

echo "
MariaDB
"
sudo yum install mariadb-server mariadb -y
sudo systemctl enable mariadb
sudo systemctl start mariadb
