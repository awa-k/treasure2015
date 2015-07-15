class sshd (
  $config            = $sshd::params::config,
  $config_template   = $sshd::params::config_template,
  $package_ensure    = $sshd::params::package_ensure,
  $package_name      = $sshd::params::package_name,
  $service_enable    = $sshd::params::service_enable,
  $service_ensure    = $sshd::params::service_ensure,
  $service_manage    = $sshd::params::service_manage,
  $service_name      = $sshd::params::service_name,
  $use_ldappubkey    = $sshd::params::use_ldappubkey,
) inherits sshd::params {

  anchor { 'sshd::begin': } ->
  class { '::sshd::install': } ->
  class { '::sshd::config': } ~>
  class { '::sshd::service': } ->
  anchor { 'sshd::end': }

}
