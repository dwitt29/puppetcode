# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_rsyslog::install

class rpm_rsyslog::install {

  if $rpm_rsyslog::install_ensure == 'purged' {
    package { $rpm_rsyslog::remove_message:
      name 	=> $rpm_rsyslog::install_name,
      ensure 	=> $rpm_rsyslog::install_ensure,
      provider 	=> $rpm_rsyslog::provider,
      command	=> $rpm_rsyslog::rpm_provider_command,
    }
  } 
  else {
    package { $rpm_rsyslog::install_message:
      name 	=> $rpm_rsyslog::install_name,
      ensure 	=> $rpm_rsyslog::install_ensure,
      provider 	=> $rpm_rsyslog::provider,
      command	=> $rpm_rsyslog::rpm_provider_command,
    }
  }

}
