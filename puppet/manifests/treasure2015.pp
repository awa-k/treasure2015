#
# node tresure
#
node /^treasure/ {
  anchor { '::treasure::begin': } ->
  notify { 'treasure provisioning start.': } ->
  class { '::sysenv':
    localtime => 'Asia/Tokyo',
    lang      => 'ja_JP.UTF-8',
  } ->
  class { '::yumrepos':
    enable_mysql56_community => 1,
    enable_remi_php56        => 1,
    enable_elrepo_kernel     => 1,
  } ->
  class { '::add_cmdtools':
    package_name => [
      'dstat',
      'emacs',
      'gcc',
      'git',
      'libmcrypt',
      'lv',
      'make',
      'man',
      'npm',
      'openssh-clients',
      'screen',
      'tree',
      'unzip',
      'vim-enhanced',
      'wget',
      'yum-plugin-versionlock',
      'zsh',
    ],
  } ->
  class { '::php':
    modules_name => [
      'php-cli',
      'php-common',
      'php-devel',
      'php-mbstring',
      'php-mcrypt',
      'php-mysqlnd',
      'php-pdo',
    ],
  } ->
  class { '::sshd': } ->
  notify { 'treasure provisioning end.': } ->
  anchor { '::treasure::end': }
}
