# == Class: php
#
class php (

  $config                          = $php::params::config,
  $config_template                 = $php::params::config_template,
  $package_ensure                  = $php::params::package_ensure,
  $package_name                    = $php::params::package_name,
  $modules_ensure                  = $php::params::modules_ensure,
  $modules_name                    = $php::params::modules_name,
  $max_execution_time              = $php::params::max_execution_time,
  $opcache_memory_consumption      = $php::params::opcache_memory_consumption,
  $opcache_max_accelerated_files   = $php::params::opcache_max_accelerated_files,
  $opcache_interned_strings_buffer = $php::params::opcache_interned_strings_buffer,
  $opcache_validate_timestamps     = $php::params::opcache_validate_timestamps,
  $opcache_revalidate_freq         = $php::params::opcache_revalidate_freq,
  $opcache_fast_shutdown           = $php::params::opcache_fast_shutdown,
  $versionlock                     = $php::params::versionlock,

) inherits php::params {

  anchor { 'php::begin': } ->
  class { '::php::install': } ->
  class { '::php::config': } ~>
  class { '::php::service': } ->
  anchor { 'php::end': }

}
