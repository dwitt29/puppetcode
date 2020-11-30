# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpms::cronie::install
class rpms::cronie::install {
    package { 'Installing crond rpm' :
    name => 'cronie',
    ensure => present,
  }
}
