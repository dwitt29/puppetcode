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
)
{
  #contain etc::users
  contain etc::fids
  contain etc::securefiles
}
