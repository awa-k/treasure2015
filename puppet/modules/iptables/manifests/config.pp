class iptables::config inherits iptables {

  file { $config:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0600',
    source  => $config_file,
  }

}
