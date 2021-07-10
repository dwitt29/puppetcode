node default {
  include rpm_cronie
  include rpm_rsyslog
  include rpm_sudo
  include etc
  include rpm_python
 }

 node /centos8_jenkins/ {
   include jenkins
 }
