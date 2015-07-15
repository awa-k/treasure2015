class iptables::install inherits iptables {

  ensure_packages($package_name, {'ensure' => $package_ensure})

}
