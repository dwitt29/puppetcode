# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include rpm_python::install
class rpm_python::install {

  if $rpm_python::install_python_ensure == 'purged' {  # Removal
    notify { $rpm_python::uninstall_python_message: }
    package { $rpm_python::uninstall_python_message:
      name    =>  $rpm_python::install_python_name,
      ensure  =>  $rpm_python::install_python_ensure,
    }
    notify { $rpm_python::uninstall_pip_message: }
    package { $rpm_python::uninstall_pip_message:
      name    =>  $rpm_python::install_pip_name,
      ensure  =>  $rpm_python::install_pip_ensure,
    }

  } else {    # Install
    notify { $rpm_python::install_python_message: }
    package { $rpm_python::install_python_message:
      name    =>  $rpm_python::install_python_name,
      ensure  =>  $rpm_python::install_python_ensure,
    }
    notify { $rpm_python::install_pip_message: }
    package { $rpm_python::uninstall_pip_message:
      name    =>  $rpm_python::install_pip_name,
      ensure  =>  $rpm_python::install_pip_ensure,
    }
  }

}