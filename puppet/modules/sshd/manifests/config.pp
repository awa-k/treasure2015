class sshd::config inherits sshd {

  file { $config:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0600',
    content => template($config_template),
  }

  # for ssh_ldap_pubkey
  if $use_ldappubkey == true {
    file {
     '/etc/ssh/ldap.conf':
       ensure => link,
       target => '/etc/openldap/ldap.conf',
    }
  }

}
