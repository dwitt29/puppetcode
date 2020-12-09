# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_sudo::file

class rpm_sudo::file {

  #tag 'sudo' 

  if rpm_sudo::install_ensure == 'installed' {
    file { $rpm_sudo::config_file:
#      path	=> rpm_sudo::config_file,
      ensure	=> rpm_sudo::config_file_ensure,
      owner	=> rpm_sudo::config_file_owner,
      group	=> rpm_sudo::config_file_group,
      mode	=> rpm_sudo::config_file_mode,
      backup	=> rpm_sudo::config_file_backup,
      source	=> rpm_sudo::config_file_source,
    }
  }

}
