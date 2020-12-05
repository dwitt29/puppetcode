# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_cronie::service

class rpm_cronie::service {

  if $rpm_cronie::install_ensure != 'installed' {
    service { $rpm_cronie::service_start_message :
      name => $rpm_cronie::service_name,
      ensure => $rpm_cronie::service_ensure,
      enable => $rpm_cronie::service_enable
    }
  }
}
