class rpms {
  contain rpms::cronie

  Class['::rpms::cronie::install']
}
