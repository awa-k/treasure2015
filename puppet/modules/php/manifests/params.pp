# == Class: php::params
#
# === Parameters
#
# [*opcache_max_accelerated_files*]
#   Directive of opcache.ini
#   Be accept between 200 and 10000.
#   Find your project php files like `find . -type f -name "*.php" | wc -l`
#
class php::params {

  $config                          = '/etc/php.ini'
  $config_template                 = 'php/php.ini.erb'
  $package_ensure                  = 'present'
  $package_name                    = [ 'php' ]
  $modules_ensure                  = 'present'
  $modules_name                    = [ '', ]
  $max_execution_time              = 0

  # ini directive for Zend OPcache
  $opcache_memory_consumption      = 128
  $opcache_interned_strings_buffer = 8
  $opcache_max_accelerated_files   = 2000
  $opcache_validate_timestamps     = nil
  $opcache_revalidate_freq         = 60
  $opcache_fast_shutdown           = 1

  # invisible
  $versionlock                     = '/etc/yum/pluginconf.d/versionlock.list'
}
