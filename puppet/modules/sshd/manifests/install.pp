class sshd::install inherits sshd {

  ensure_packages($package_name, {'ensure' => $package_ensure})

}
