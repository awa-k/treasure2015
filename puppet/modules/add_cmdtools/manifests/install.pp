class add_cmdtools::install inherits add_cmdtools {

  ensure_packages($package_name, {'ensure' => $package_ensure})

}
