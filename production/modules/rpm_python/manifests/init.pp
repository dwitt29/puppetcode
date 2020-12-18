class rpm_python (

  # in install.pp
  String  $install_python_message,
  String  $uninstall_python_message,
  String  $install_python_name,
  String  $install_python_ensure,
  String  $install_python_linksrc,
  String  $install_python_linkdst,
  String  $install_python_link_ensure,
  String  $uninstall_python_link_ensure,

  String  $install_pip_message,
  String  $uninstall_pip_message,
  String  $install_pip_name,
  String  $install_pip_ensure,
  String  $install_pip_linksrc,
  String  $install_pip_linkdst,
  String  $install_pip_link_ensure,
  String  $uninstall_pip_link_ensure,
  
  )
{
  contain rpm_python::install
}
