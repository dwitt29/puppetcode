# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_rsyslog::service

class rpm_rsyslog::service {

  if $rpm_rsyslog::install_ensure != 'purged' {
    service { $rpm_rsyslog::service_start_message :
      name 	=> $rpm_rsyslog::service_name,
      ensure 	=> $rpm_rsyslog::service_ensure,
      enable 	=> $rpm_rsyslog::service_enable
    }
  }
}
