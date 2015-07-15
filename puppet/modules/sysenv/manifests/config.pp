class sysenv::config inherits sysenv {

  file { $localtime_config:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    source  => "file:///usr/share/zoneinfo/$localtime",
  }

  file { $lang_config:
    ensure => file,
    owner  => 0,
    group  => 0,
    mode   => '0644',
    source => "puppet:///modules/sysenv/$lang.i18n",
  }

}
