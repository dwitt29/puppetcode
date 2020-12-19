# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_python::install

class rpm_python::install {

  # Python RPM
  if $rpm_python::install_python_ensure == 'purged' {  
    
    # Remove python rpm
    notify { $rpm_python::uninstall_python_message: }
    package { $rpm_python::uninstall_python_message:
      name    =>  $rpm_python::install_python_name,
      ensure  =>  $rpm_python::install_python_ensure,
    }
    # Remove python soft link
    notify { $rpm_python::uninstall_python_link_message: }
    file { $rpm_python::uninstall_python_link_message:
      path      => $rpm_python::install_python_linkdst,
      ensure    => $rpm_python::uninstall_python_link_ensure,
    }
  } 
  
  if $rpm_python::install_python_ensure == 'installed' {       
    # Install python rpm
    notify { $rpm_python::install_python_message: }
    package { $rpm_python::install_python_message:
      name    =>  $rpm_python::install_python_name,
      ensure  =>  $rpm_python::install_python_ensure,
    }
    # Install python soft link
    notify { $rpm_python::install_python_link_message: }
    file { $rpm_python::install_python_link_message:
      path      => $rpm_python::install_python_linkdst,
      ensure    => $rpm_python::install_python_link_ensure,
      target    => $rpm_python::install_python_linksrc,
    }
  }

  # Python Pip RPM
  if $rpm_python::install_pip_ensure == 'installed' {
    # Install pip rpm
    notify { $rpm_python::install_pip_message: }
    package { $rpm_python::install_pip_message:
      name    =>  $rpm_python::install_pip_name,
      ensure  =>  $rpm_python::install_pip_ensure,
    }
    # Install pip soft link
    notify { $rpm_python::install_pip_link_message: }
    file { $rpm_python::install_pip_link_message:
      path      => $rpm_python::install_pip_linkdst,
      ensure    => $rpm_python::install_pip_link_ensure,
      target    => $rpm_python::install_pip_linksrc,
    }
  } 
  
  if $rpm_python::install_pip_ensure == 'purged' {
    # Remove pip rpm
    notify { $rpm_python::uninstall_pip_message: }
    package { $rpm_python::uninstall_pip_message:
      name    =>  $rpm_python::install_pip_name,
      ensure  =>  $rpm_python::install_pip_ensure,
    }
    # Remove pip soft link
    notify { $rpm_python::uninstall_pip_link_message: }
    file { $rpm_python::uninstall_pip_link_message:
      path      => $rpm_python::install_pip_linkdst,
      ensure    => $rpm_python::uninstall_pip_link_ensure,
    } 
  }

  if $rpm_python::install_pip_package_ensure == 'absent' {
    $rpm_python::install_pip_packages.each | String $pip_package | {
      notify { "$rpm_python::uninstall_pip_package_message $pip_package": }
      package { "$rpm_python::uninstall_pip_package_message $pip_package": 
        name        =>  $pip_package,
        provider    =>  $rpm_python::pip_provider,
        command     =>  $rpm_python::install_pip_linkdst,
        ensure      =>  $rpm_python::install_python_ensure,
      }
    }
  }  
  
   if $rpm_python::install_pip_package_ensure == 'install' {
    $rpm_python::install_pip_packages.each | String $pip_package | {
      notify { "$rpm_python::install_pip_package_message $pip_package": }
      package { "$rpm_python::install_pip_package_message $pip_package": 
        name        =>  $pip_package,
        provider    =>  $rpm_python::pip_provider,
        command     =>  $rpm_python::install_pip_linkdst,
        ensure      =>  $rpm_python::install_pip_package_ensure,
      }
    }
  }  

   if $rpm_python::install_pip_package_ensure == 'absent' {
   $rpm_python::install_pip_packages.each | String $pip_package | {
     notify { "$rpm_python::uninstall_pip_package_message $pip_package": }
     package { "$rpm_python::uninstall_pip_package_message $pip_package": 
       name        =>  $pip_package,
       provider    =>  $rpm_python::pip_provider,
       command     =>  $rpm_python::install_pip_linkdst,
       ensure      =>  $rpm_python::install_pip_package_ensure,
     }
   }
  }  

}
