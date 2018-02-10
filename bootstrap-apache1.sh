
#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 vim

if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant/app1 /var/www
fi
