# == Class: php::install
#
class php::install inherits php {

  if (defined(Package['php-pecl-apc']) and defined(Package['php-pecl-apcu'])) {
    fail('Cannot install packages both php-pecl-apcu and php-pecl-apc.')
  }

  exec { 'remove php versionlock':
    command => '/usr/bin/yum versionlock delete \*:php\*',
    onlyif  => "/bin/grep php-5 ${versionlock} | /bin/grep -v php-${package_ensure}",
  }
  ensure_packages($package_name, {'ensure' => $package_ensure, 'require' => Exec['remove php versionlock']})
  ensure_packages($modules_name, {'ensure' => $modules_ensure, 'require' => Exec['remove php versionlock']})
  exec { 'add php versionlock':
    command => '/usr/bin/yum versionlock add php\*',
    unless  => "/bin/grep php-${package_ensure} ${versionlock}",
  }

}
