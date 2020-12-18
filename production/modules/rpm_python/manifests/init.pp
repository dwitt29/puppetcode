class rpm_python (

  # in install.pp
  String  $install_python_message,
  String  $uninstall_python_message,
  String  $install_python_name,
  String  $install_python_ensure,

  String  $install_pip_message,
  String  $uninstall_pip_message,
  String  $install_pip_name,
  String  $install_pip_ensure,
  
  )
{
  contain rpm_python::install
}
