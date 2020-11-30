class rpms::cronie {
  contain rpms::cronie::install
  contain rpms::cronie::service
}
