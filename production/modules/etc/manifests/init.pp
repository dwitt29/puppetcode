class etc (

  String 	$etc_passwd_path,
  String 	$etc_passwd_mode,
  String 	$etc_passwd_owner,
  String 	$etc_passwd_group,
  
  String 	$etc_shadow_path,
  String 	$etc_shadow_mode,
  String 	$etc_shadow_owner,
  String 	$etc_shadow_group,

  String 	$etc_group_path,
  String 	$etc_group_mode,
  String 	$etc_group_owner,
  String 	$etc_group_group,

  String  $rates_user_name,
  String  $rates_user_uid,
  String  $rates_user_gid,
  String  $rates_user_comment,
  String  $rates_user_home,
  String  $rates_user_shell,
  String  $rates_user_groups,
  String  $rates_user_install,
  String  $rates_user_uninstall,
)
{
  #contain etc::users
  contain etc::fids
  contain etc::securefiles
}
