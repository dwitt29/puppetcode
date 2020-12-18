class rpm_python (

  # in install.pp
  String  $install_python_message,
  String  $uninstall_python_message,
  String  $install_python_name,
  String  $install_python_ensure,
  String  $rpm_python::install_python_linksrc,
  String  $rpm_python::install_python_linkdst,
  String  $rpm_python::install_python_link_ensure,
  String  $rpm_python::uninstall_python_link_ensure,

  String  $install_pip_message,
  String  $uninstall_pip_message,
  String  $install_pip_name,
  String  $install_pip_ensure,
  String  $rpm_python::install_pip_linksrc,
  String  $rpm_python::install_pip_linkdst,
  String  $rpm_python::install_pip_link_ensure,
  String  $rpm_python::uninstall_pip_link_ensure,
  
  )
{
  contain rpm_python::install
}
