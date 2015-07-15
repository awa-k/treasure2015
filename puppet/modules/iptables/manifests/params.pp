class iptables::params {

  $config            = '/etc/sysconfig/iptables'
  $config_file       = 'puppet:///modules/iptables/iptables'
  $package_ensure    = 'present'
  $package_name      = [ 'iptables' ]
  $service_enable    = true
  $service_ensure    = 'running'
  $service_manage    = true
  $service_name      = 'iptables'

}
