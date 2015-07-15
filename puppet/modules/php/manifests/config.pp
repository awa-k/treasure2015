# == Class: php::config
#
class php::config inherits php {

  file { $config:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template($config_template);
  }

  if defined(Package['php-opcache']) {

    # '\d-' prefix is ruled by remi_php5x repos.
    file { '/etc/php.d/10-opcache.ini':
      ensure  => file,
      owner   => 0,
      group   => 0,
      mode    => '0644',
      content => template('php/php.d/opcache.ini.erb');
    }

  }

}
