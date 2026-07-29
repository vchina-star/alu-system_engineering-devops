# Raises the Nginx open file limit in /etc/default/nginx and restarts Nginx

exec { 'raise-nginx-open-file-limit':
  command => '/bin/sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"/\' /etc/default/nginx',
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/bin/grep -q \'ULIMIT="-n 15"\' /etc/default/nginx',
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
}
