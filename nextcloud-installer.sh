sudo apt-get update
sudo apt-get upgrade
echo "Getting dependecies for Nextcloud"
sudo apt-get install unzip -y 
sudo apt-get install nginx mysql-server -y 
sudo apt-get install php7.4 php7.4-cli php7.4-common php7.4-json php7.4-fpm php7.4-curl php7.4-mysql php7.4-gd php7.4-opcache php7.4-xml php7.4-zip php7.4-mbstring -y 
echo "Setting PHP as an service"
sudo systemctl start php7.4-fpm
sudo systemctl enable php7.4-fpm
echo "Setting MySQL as an service and configuring it"
mysql -u root -e "CREATE DATABASE nextcloud;"
read -p 'Enter MySQL Username: ' username
read -p 'Enter MySQL Password: ' password
mysql -u root -e "CREATE USER '$username'@'localhost' IDENTIFIED BY '$password';"
mysql -u root -e "GRANT ALL PRIVILEGES ON nextcloud.* TO '$username'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"
echo "Setting up Nextcloud"
sudo systemctl start nginx
sudo systemctl enable nginx
sudo wget https://download.nextcloud.com/server/releases/latest.zip -P /var/www/
sudo unzip -q /var/www/latest.zip /var/www/
sudo rm /var/www/latest.zip
sudo chown -R www-data:www-data nextcloud
sudo rm /etc/nginx/sites-enabled/default
sudo ufw allow tcp 443
sudo ufw allow udp 443
sudo ufw allow tcp 80
sudo ufw allow udp 80
