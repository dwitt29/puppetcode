# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_cronie::install
class rpm_cronie::install {
  package { 'Installing crond rpm' :
    name => 'cronie',
    ensure => present,
  }
}
