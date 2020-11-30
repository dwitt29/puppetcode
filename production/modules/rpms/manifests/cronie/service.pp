# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpms::cronie::service
class rpms::cronie::service {

  service { 'Starting cronie service' :
    name => 'crond',
    ensure => true,
    enable => true,
  }

}
