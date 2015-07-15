#
# install convenience tools
# default package_name = [ '', ], (null)
# class { '::add_cmdtools':
#   package_name => [
#     'git',
#     'lv',
#   ],
# }
#
class add_cmdtools (
  $package_ensure    = $add_cmdtools::params::package_ensure,
  $package_name      = $add_cmdtools::params::package_name,
) inherits add_cmdtools::params {

  anchor { 'add_cmdtools::begin': } ->
  class { '::add_cmdtools::install': } ->
  class { '::add_cmdtools::config': } ~>
  class { '::add_cmdtools::service': } ->
  anchor { 'add_cmdtools::end': }

}
