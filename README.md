# Vagrant LAMP Development Box

## Customizing

Within *Vagrantfile* change `config.vm.share_folder` to reflect whichever path you wish to share.
Once the box is up and running, `vagrant ssh` in and symlink the required vhosts to `/etc/apache2/sites-enabled` and reload the apache config `service apache2 restart`.

## Included Applications

* PHP 5.4.11 (from dotdeb.org)
* Apache 2
* MySQL 5.5
* Composer
* Sendmail

## PHP Extensions

1. APC
2. GD
3. Xdebug
4. Memcached
5. Ldap
6. Curl
7. MySQL (native driver)

# Usage

`vagrant up`, wait for the box to be initialized and then navigate to *192.168.33.10* in your browser.