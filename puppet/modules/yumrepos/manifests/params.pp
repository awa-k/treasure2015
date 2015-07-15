# == Class: yumrepos::param
#
# === Parameters
#
# [enable_hoge]
#   hoge repoの有効・無効を設定
#   `enabled` directiveの値 (1 or 0)
#
class yumrepos::params {
  $config                     = 'yumrepos/treasure.repo.erb'
  # repos
  $enable_elrepo              = 1
  $enable_elrepo_kernel       = 0
  $enable_epel                = 1
  $enable_mysql56_community   = 0
  $enable_puppetlabs_deps     = 1
  $enable_puppetlabs_products = 1
  $enable_remi                = 1
  $enable_remi_php56          = 0
  $enable_rpmforge            = 1
}
