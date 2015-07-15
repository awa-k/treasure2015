# == Class: yumrepos
class yumrepos (
    $config                     = $yumrepos::params::config,
    $enable_elrepo              = $yumrepos::params::enable_elrepo,
    $enable_elrepo_kernel       = $yumrepos::params::enable_elrepo_kernel,
    $enable_epel                = $yumrepos::params::enable_epel,
    $enable_mysql56_community   = $yumrepos::params::enable_mysql56_community,
    $enable_puppetlabs_deps     = $yumrepos::params::enable_puppetlabs_deps,
    $enable_puppetlabs_products = $yumrepos::params::enable_puppetlabs_products,
    $enable_remi                = $yumrepos::params::enable_remi,
    $enable_remi_php56          = $yumrepos::params::enable_remi_php56,
    $enable_rpmforge            = $yumrepos::params::enable_rpmforge,
  ) inherits yumrepos::params {
  #
  # repository settings
  #

  file { '/etc/yum.repos.d/treasure.repo':
    ensure   => file,
    owner    => 0,
    group    => 0,
    mode     => '0644',
    content  => template($config),
  }

}
