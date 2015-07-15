class sysenv (
  $localtime         = $sysenv::params::localtime,
  $localtime_config  = $sysenv::params::localtime_config,
  $lang              = $sysenv::params::lang,
  $lang_config       = $sysenv::params::lang_config,
) inherits sysenv::params {

  anchor { 'sysenv::begin': } ->
  class { '::sysenv::install': } ->
  class { '::sysenv::config': } ~>
  class { '::sysenv::service': } ->
  anchor { 'sysenv::end': }

}
