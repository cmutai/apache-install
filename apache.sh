#Author:Carol
#Date: 10/29/2022
#License

#Script to download apache
user_name = `whoami`

if [ user_name != root]
then
echo "Switch to root user before continuing"
exit 1
fi


yum install httpd -y
systemctl status httpd
systemctl start httpd
systemctl enable httpd
ifconfig
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload

#From here do create an index.html file  to replace content in browser

cd /var/www/html
touch index.html

#now type ' vi index.html'
#then ' <h1>This is my first personal website</h1>'
#reload browser

~                                   
