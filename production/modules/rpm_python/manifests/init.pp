class rpm_python (

  # python rpm config
  String  $install_python_message,
  String  $uninstall_python_message,
  String  $install_python_name,
  String  $install_python_ensure,
  String  $install_python_linksrc,
  String  $install_python_linkdst,
  String  $install_python_link_ensure,
  String  $uninstall_python_link_ensure,
  String  $install_python_link_message,
  String  $uninstall_python_link_message,

  # Pip rpm config
  String  $install_pip_message,
  String  $uninstall_pip_message,
  String  $install_pip_name,
  String  $install_pip_ensure,
  String  $install_pip_linksrc,
  String  $install_pip_linkdst,
  String  $install_pip_link_ensure,
  String  $uninstall_pip_link_ensure,
  String  $install_pip_link_message,
  String  $uninstall_pip_link_message,

  # packages/modules to install via Pip
  String  $install_pip_package_message,
  String  $uninstall_pip_package_message,
  Array[String] $install_pip_packages,
  String  $install_pip_package_ensure,
  String  $pip_provider,
  
  )
{
  contain rpm_python::install
}
