# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_cronie::install

class rpm_cronie::install {

  if $rpm_cronie::install_ensure == 'purged' {
    package { $rpm_cronie::remove_message:
      name 	=> $rpm_cronie::install_name,
      ensure 	=> $rpm_cronie::install_ensure,
      provider 	=> $rpm_cronie::provider,
      command	=> $rpm_cronie::rpm_provider_command,
    }
  } 
  else {
    package { $rpm_cronie::install_message:
      name 	=> $rpm_cronie::install_name,
      ensure 	=> $rpm_cronie::install_ensure,
      provider 	=> $rpm_cronie::provider,
      command	=> $rpm_cronie::rpm_provider_command,
    }
  }

}
