class sshd::params {

  $config            = '/etc/ssh/sshd_config'
  $config_template   = 'sshd/sshd_config.erb'
  $package_ensure    = 'present'
  $package_name      = [ 'openssh-server', 'openssh-clients', 'openssh-ldap' ]
  $service_enable    = true
  $service_ensure    = 'running'
  $service_manage    = true
  $service_name      = 'sshd'
  $use_ldappubkey    = false

}
