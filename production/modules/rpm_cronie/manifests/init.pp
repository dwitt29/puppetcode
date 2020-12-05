class rpm_cronie (

  # in install.pp
  String $install_message,
  String $remove_message,
  String $install_name,
  String $install_ensure,

  # in service.pp
  String $service_name,
  String $service_ensure,
  String $service_enable,
  String $service_start_message,
  String $service_stop_message,

) {
  contain rpm_cronie::install
  contain rpm_cronie::service
}
