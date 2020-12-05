class rpm_cronie (
  String $install_message,
) {
  contain rpm_cronie::install
  contain rpm_cronie::service
}
