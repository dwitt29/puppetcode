class rpm_cronie {
  contain rpm_cronie::install
  contain rpm_cronie::service
}
