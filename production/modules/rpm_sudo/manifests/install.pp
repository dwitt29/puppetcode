# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_sudo::install

class rpm_sudo::install {

  tag 'sudo'

  if $rpm_sudo::install_ensure == 'purged' {
    package { $rpm_sudo::remove_message:
      name      => $rpm_sudo::install_name,
      ensure    => $rpm_sudo::install_ensure,
      provider  => $rpm_sudo::provider,
      command   => $rpm_sudo::rpm_provider_command,
    }
  }
  else {
    package { $rpm_sudo::install_message:
      name      => $rpm_sudo::install_name,
      ensure    => $rpm_sudo::install_ensure,
      provider  => $rpm_sudo::provider,
      command   => $rpm_sudo::rpm_provider_command,
    }
  }

}
