class iptables (
  $config            = $iptables::params::config,
  $config_file       = $iptables::params::config_file,
  $package_ensure    = $iptables::params::package_ensure,
  $package_name      = $iptables::params::package_name,
  $service_enable    = $iptables::params::service_enable,
  $service_ensure    = $iptables::params::service_ensure,
  $service_manage    = $iptables::params::service_manage,
  $service_name      = $iptables::params::service_name,
) inherits iptables::params {

  anchor { 'iptables::begin': } ->
  class { '::iptables::install': } ->
  class { '::iptables::config': } ~>
  class { '::iptables::service': } ->
  anchor { 'iptables::end': }

}
