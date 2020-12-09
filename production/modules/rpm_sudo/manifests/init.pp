class rpm_sudo (

  # in install.pp
  String $install_message,
  String $remove_message,
  String $install_name,
  String $install_ensure,

  # in service.pp
  String $service_name,
  Boolean $service_ensure,
  Boolean $service_enable,
  String $service_start_message,
  String $service_stop_message,

  # in file.pp
  String $config_file,
  String $config_file_ensure,
  Boolean $config_file_replace,
  String $config_file_message,
  String $config_file_owner,
  String $config_file_group,
  String $config_file_mode,
  Boolean $config_file_backup,
  String $config_file_source,

  # other stuff
  String $provider,
  String $rpm_provider_command,

) {
  contain rpm_sudo::install
  contain rpm_sudo::file
  #contain rpm_sudo::service
}

