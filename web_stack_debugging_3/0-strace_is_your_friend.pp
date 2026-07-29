# Fixes the PHP file extension typo causing the WordPress HTTP 500 error

exec { 'fix-wordpress':
  command => '/bin/sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/bin/grep -q phpp /var/www/html/wp-settings.php',
}
